class VisitsController < ApplicationController
  def new
  end

  def create
    @visit = Visit.new(visit_params)
    @visit.user = current_user
    @country = Country.find(params[:country_id])
    @visit.country = @country
    if @visit.save!
      redirect_to profile_path(current_user)
    else
      render profile_path
    end
  end

  def visit_params
    params.require(:visits).permit(:longitude, :latitude)
  end
end
