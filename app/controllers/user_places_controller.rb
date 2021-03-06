class UserPlacesController < ApplicationController
   def create
    @user_place = UserPlace.new
    @user_place.user = current_user
    place = Place.find(params[:user_place][:place])
    @user_place.place = place
    if @user_place.save!
      respond_to do |format|
      format.html { redirect_to country_path(place.country) }
      format.js
      end
    else
      respond_to do |format|
        # format.html { render 'create' }
        format.js  # <-- idem
      end
    end

    # redirect
    # if @user_place.save!
      # redirect_to profile_path(current_user)
    # else
    #   render "countries/index"
    # end
  end
end
