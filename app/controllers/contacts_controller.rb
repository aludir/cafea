class ContactsController < ApplicationController
  before_action :authenticate_user!
  before_action only: [:edit, :destroy] do
    user_owns_resource?(Contact)
  end
  before_action only: [:create] do
    add_user_profile_resource(Contact,contact_params)
  end
  
  def create
    
  end
  
  def destroy
    destroy_user_profile_resource(@resource)
  end
  
  private
  def contact_params
    params.require(:contact).permit(:user_id, :content, :description, :category_id)
  end
end
