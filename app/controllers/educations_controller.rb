class EducationsController < ApplicationController
  before_action :authenticate_user!
  before_action only: [:edit, :destroy] do
    user_owns_resource?(Education)
  end
  before_action only: [:create] do
    add_user_profile_resource(Education,education_params)
  end
  
  def create
    
  end
  
  def destroy
    destroy_user_profile_resource(@resource)
  end
  
  private
  def education_params
    params.require(:education).permit(:user_id, :school, :start_date, :end_date, :field, :grade, :activities, :description)
  end
end