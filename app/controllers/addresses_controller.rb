class AddressesController < ApplicationController
  before_action :authenticate_user!
  before_action only: [:edit, :destroy] do
    user_owns_resource?(Address)
  end
  
  def create
    add_user_profile_resource(Address,address_params)
  end
  
  def destroy
    destroy_user_profile_resource(@resource)
  end
  
  private 
  def address_params
    params.require(:address).permit(:user_id, :street, :number, :city_id, :zip, :country_id, :description)
  end
end
