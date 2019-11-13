require 'open-uri'
require 'json'

class CountriesController < ApplicationController
  def index
    @users = User.all
    @countries = Country.all
    @visits = Visit.all
    @markers = @visits.map do |visit|
      {
        lat: visit.latitude,
        lng: visit.longitude
      }
    end
  end

  def show
    @country = Country.find(params[:id])
    @users_visited = User.joins(:visits).where(visits: { country_id: @country.id }).uniq
    @photo = @country.photo
    @places = @country.places
    @marker = { lat: @country.latitude, lng: @country.longitude }
    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        infoWindow: { content: render_to_string(partial: "/countries/places_box", locals: { place: place }) }
      }
    end
    @phrases = @country.vocabularies[0] ? @country.vocabularies[0].phrases : []
  end

  def visa_info
    @country = Country.find(params[:country_id])
    if params[:citizen_country].present?
      citizen_country = params[:citizen_country]
      country_code = @country.code
      @visa_info = get_visa_info(citizen_country, country_code)
    end
    respond_to do |format|
      format.html { render 'show', locals: { visa_info: @visa_info } }
      format.js
    end
  end

  def place
    @country = Country.find(params[:id])
    @places = Place.geocoded # returns places with coordinates
    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude
      }
    end
  end

  def get_visa_info(citizen_country, country_code)
    url = "http://requirements-api.sandbox.joinsherpa.com/v2/entry-requirements?citizenship=#{citizen_country}&destination=#{country_code}&language=en&key=AIzaSyACsHgC04uwmmgLYEJzQy53ME1pS_ujFMA"
    response = open(url).read
    datas = JSON.parse(response)
    # visa
    warning = datas["visa"].first["textual"]["class"] # if class=warning red font else black
    visa_required = datas["visa"].first["textual"]["text"][0] # you need a visa
    allowed_stay = datas["visa"].first["allowed_stay"] # 30 days
    type = datas["visa"].first["type"] # tourist
    requirement = datas["visa"].first["requirement"] # do an if statement if NOT_REQUIRED puts "Not required" else puts "Required" end
    info1 = datas["visa"].first["textual"]["text"][1] # "You may be eligible for an eVisa for your trip."
    info2 = datas["visa"].first["textual"]["text"][2] # "An eVisa is delivered electronically, and can be obtained online before your trip to Vietnam."
    # passport
    blank_pages = datas["passport"]["textual"]["blank_pages"]["text"][1] # Your passport must have one blank page.
    valid = datas["passport"]["textual"]["passport_validity"]["text"][1] # Your passport must be valid for six months at the time you enter Vietnam."

    # vaccination

    # currency
    currency_arrival = datas["currency"]["arrival"]
    currency_exit = datas["currency"]["exit"]

    { warning: warning,
      visa_required: visa_required,
      allowed_stay: allowed_stay,
      type: type,
      requirement: requirement,
      info1: info1,
      info2: info2,
      blank_pages: blank_pages,
      valid: valid,
      recom_vaccination: datas["vaccination"]["recommended"],
      risk_vaccination: datas["vaccination"]["risk"],
      currency_arrival: currency_arrival,
      currency_exit: currency_exit }
  end
end

# jesh's code for languages/phrases that was commented out
# @text = "hello"
# language_code = "pl"
# project_id = "corded-fact-258204"
# raise
# storage = Google::Cloud::Storage.new project_id: project_id
# storage.buckets.each do |bucket|
#   puts bucket.name
# end
# translate = Google::Cloud::Translate.new version: :v2, project_id: project_id
# @translation = translate.translate text, to: language_code

# @country.vocabularies[0].phrases : []
# @phrases = @country.vocabulary
# @country.vocabularies.phrases do |vocab|
#   {
#     original: vocabularies.original,
#     translation: vocabularies.translation
#   }
# end
