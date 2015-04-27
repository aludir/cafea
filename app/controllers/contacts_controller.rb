class ContactsController < ApplicationController
  before_action :authenticate_user!
  before_action only: [:edit, :destroy] do
    user_owns_resource?(Contact)
  end
  
  def destroy
    @contact.destroy
    flash[:notice]="You removed this contact"
    redirect_to user_path(current_user.uuid)
  end
  
  private
  def contact_params
    params.require(:announcement).permit(:user_id, :title, :body, :tag_list => [])
  end
end
