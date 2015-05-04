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
  
  def user_owns_resource?(resource)
    @resource = resource.find(params[:id])
    if !user_validation(@resource)
      flash[:alert]="You are not the owner of this "+resource.name+"!"
      redirect_to root_path
    end
  end
  
  def add_user_profile_resource(resource,params)
    @resource = resource.new(params)
    if @resource.save!
      flash[:success]="You added new "+resource.class.name+" successfully!"
    else
     flash[:alert]="Something went wrong :( Please report this bug at admin@aludir.net"
    end
    redirect_to user_path(current_user.uuid)
  end
  
  def destroy_user_profile_resource(resource)
    resource.destroy
    flash[:notice]="You removed this "+resource.class.name+"!"
    redirect_to user_path(current_user.uuid)
  end
  
  def user_validation(resource)
    resource.user == current_user
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
