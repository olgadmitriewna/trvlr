class UserPlacesController < ApplicationController
   def create
    @user_place = UserPlace.new
    @user_place.user = current_user
    place = Place.find(params[:user_place][:place])
    @user_place.place = place
    @user_place.save
    # redirect
    # if @user_place.save!
      # redirect_to profile_path(current_user)
    # else
    #   render "countries/index"
    # end
  end
end
