class VisitsController < ApplicationController
  def new
  end

  def create
  @visit = Visit.new
  @visit.user = current_user
  @country = Country.find(params[:visit][:country_id])
  @visit.country = @country
  if @visit.save!
    redirect_to profile_path(current_user)
  else
    render profile_path
  end
  end
end
