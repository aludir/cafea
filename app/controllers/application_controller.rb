class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :count_announcements

  def count_announcements
    if current_user.present?
      unless current_user.visited_announcements_at.nil?
        @announce_count = Announcement.find(:all, :conditions => ["created_at > ? ", current_user.visited_announcements_at]).count
      else
        @announce_count = Announcement.all.count
      end
    end
  end

  private
  def after_sign_in_path_for(resource)
    if current_user.name.nil?
      edit_user_registration_path(current_user)
    else
      users_path
    end
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :birth_date, :name, :surname, :old_surname, :nickname) }
    devise_parameter_sanitizer.for(:edit) { |u| u.permit(:email, :password, :password_confirmation, :birth_date, :name, :surname, :old_surname, :nickname) }
  end

end
