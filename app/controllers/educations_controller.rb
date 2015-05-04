class EducationsController < ApplicationController
  before_action :authenticate_user!
  before_action only: [:edit, :destroy] do
    user_owns_resource?(Education)
  end
  
  def destroy
    destroy_user_profile_resource(@resource)
  end
  
  private
  def contact_params
    params.require(:address).permit(:user_id, :school, :start_date, :end_date, :field, :grade, :activities, :description)
  end
end