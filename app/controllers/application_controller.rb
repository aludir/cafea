class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  private
  def after_sign_in_path_for(resource)
    if current_user.name.nil?
      edit_user_path(current_user)
    else
      users_path
    end
  end
end
