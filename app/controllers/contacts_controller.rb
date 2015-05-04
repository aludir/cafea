class ContactsController < ApplicationController
  before_action :authenticate_user!
  before_action only: [:edit, :destroy] do
    user_owns_resource?(Contact)
  end
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save!
      flash[:success]="You added new contact successfully!"
    else
     flash[:alert]="Something went wrong :( Please report this bug at admin@aludir.net"
    end
    redirect_to user_path(current_user.uuid)
  end
  
  def destroy
    destroy_user_profile_resource(@resource)
  end
  
  private
  def contact_params
    params.require(:contact).permit(:user_id, :content, :description, :category_id)
  end
end
