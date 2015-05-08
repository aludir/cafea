class ExperiencesController < ApplicationController
  before_action :authenticate_user!
  before_action only: [:edit, :destroy] do
    user_owns_resource?(Experience)
  end
  before_action only: [:create] do
    add_user_profile_resource(Experience,experience_params)
  end
  
  def create
    
  end
  
  def destroy
    destroy_user_profile_resource(@resource)
  end
  
  private
  def experience_params
    params[:experience][:company_id] = Company.all.find_or_create_by_name(params[:experience][:company_id]).id
    params[:experience][:city_id] = City.all.find_or_create_by_name(params[:experience][:city_id]).id
    params.require(:experience).permit(:user_id, :start_date, :title, :end_date, :field_of_work, :description, :country_id, :city_id, :company_id)
  end
end
