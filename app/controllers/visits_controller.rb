class VisitsController < ApplicationController
  def new
  end

  def create
    @visit = Visit.new(visit_params)
    @visit.user = current_user
    @country = @visit.country
    @visit.country = @country
    @visit.latitude = @country.latitude
    @visit.longitude = @country.longitude
    if @visit.save!
      redirect_to profile_path(current_user)
    else
      render profile_path
    end
  end

  def visit_params
    params.permit(:country_id)
  end
end
