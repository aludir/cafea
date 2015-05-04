class LanguagesController < ApplicationController
  before_action :authenticate_user!
  before_action only: [:edit, :destroy] do
    user_owns_resource?(Language)
  end
  before_action only: [:create] do
    add_user_profile_resource(Language,language_params)
  end
  
  def create
    
  end
  
  def destroy
    destroy_user_profile_resource(@resource)
  end
  
  private
  def language_params
    params.require(:language).permit(:user_id, :name, :level)
  end
end
