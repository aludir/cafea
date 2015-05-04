class ExperiencesController < ApplicationController
  before_action :authenticate_user!
  before_action only: [:edit, :destroy] do
    user_owns_resource?(Experience)
  end
  
  def destroy
    destroy_user_profile_resource(@resource)
  end
  
  private
  def contact_params
    params.require(:address).permit(:user_id, :start_date, :end_date, :field_of_work, :description, :country_id, :city_id, :company_id)
  end
end
