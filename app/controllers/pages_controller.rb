class PagesController < ApplicationController
  def home
  end

  def profile
    @user = User.find(params[:id])
    @country = Country.find(params[:id])
    @photo = @country.photo
  end

  def about
  end
end
