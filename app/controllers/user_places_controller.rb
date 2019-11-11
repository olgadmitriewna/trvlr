class UserPlacesController < ApplicationController
   def create
    @user_place = UserPlace.new
    @user_place.user = current_user
    place = Place.find(params[:id])
    @user_place.place = place
    if @user_place.save!
      redirect_to profile_path(current_user)
    else
      render "countries/index"
    end
  end
end
