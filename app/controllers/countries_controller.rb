class CountriesController < ApplicationController
  def index
    @users = User.all
    @countries = Country.all
  end

  def show
    @country = Country.find(params[:id])
    @places = @country.places
    @marker = { lat: @country.latitude, lng: @country.longitude }
    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude
      }
    end
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

    # @original = ["Hello", "Goodbye", "How are you?", "How much does it cost?", "How do I get to..?", "yes", "no", "Can I have..?", "Thank you"]
    @phrases = @country.vocabularies[0].phrases
    # @phrases = @country.vocabulary
    # @country.vocabularies.phrases do |vocab|
    #   {
    #     original: vocabularies.original,
    #     translation: vocabularies.translation
    #   }
    # end
  end

  def place
    @places = Place.geocoded # returns places with coordinates

    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude
      }
    end
  end
end
