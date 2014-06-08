class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  private
  def after_sign_in_path_for(resource)
    root_path
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :birth_date, :name, :surname, :old_surname, :nickname) }
    devise_parameter_sanitizer.for(:edit) { |u| u.permit(:email, :password, :password_confirmation, :birth_date, :name, :surname, :old_surname, :nickname) }
  end

end
