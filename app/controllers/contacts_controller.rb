class ContactsController < ApplicationController
  before_action :authenticate_user!
  before_action :user_owns_contact?, :only => [:edit, :destroy]
  
  
  def destroy
    @contact.destroy
    flash[:notice]="You removed this contact"
    redirect_to user_path(current_user.uuid)
  end
  
  private
  def contact_params
    params.require(:announcement).permit(:user_id, :title, :body, :tag_list => [])
  end
  
  def user_owns_contact?
    @contact = Contact.find(params[:id])
    if !user_validation(@contact)
      flash[:alert]="You are not the owner of this contact!"
      redirect_to user_path(current_user)
    end
  end
end