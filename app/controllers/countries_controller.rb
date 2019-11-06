class CountriesController < ApplicationController
  def index
    @users = User.all
    @countries = Country.all
  end

  def show
    @country = Country.find(params[:id])
  end
end
