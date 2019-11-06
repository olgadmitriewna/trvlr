class CountriesController < ApplicationController
  def index
    @users = User.all
    @countries = Country.all
  end

  def show
    @country = Country.find(params[:id])
    @places = @country.places
    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude
      }
    end
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
