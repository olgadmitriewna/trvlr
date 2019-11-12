class UserVisasController < ApplicationController
  def create
    @user_visa = UserVisa.new
    @user_visa.user = current_user
    visa = Visa.find(params[:])
    @user_visa.visa = visa
    if @user_visa.save!
      redirect_to profile_path(current_user)
    else
      render "countries/index"
    end
  end
end
