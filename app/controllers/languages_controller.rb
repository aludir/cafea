class LanguagesController < ApplicationController
  before_action :authenticate_user!
  before_action only: [:edit, :destroy] do
    user_owns_resource?(Language)
  end
  
  def destroy
    destroy_user_profile_resource(@resource)
  end
  
  private
  def contact_params
    params.require(:address).permit(:user_id, :name, :level)
  end
end
