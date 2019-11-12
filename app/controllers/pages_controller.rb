class PagesController < ApplicationController
  def home
  end

  def profile
    @user = User.find(params[:id])
    @countries_visited = @user.visits.distinct.pluck(:country_id).map { |id| Country.find(id) }
    @countries = @user.countries
    @places = []
    @phrases = []
    if params[:country].present?
      @country = Country.find(params[:country])
      @places = @user.user_places.select { |user_place| user_place.place.country == @country}
      @phrases = @user.phrases.select { |phrase| phrase.vocabulary.country == @country}
    end
  end

  def about
  end
end
