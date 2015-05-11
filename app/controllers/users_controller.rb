class UsersController < ApplicationController
  before_action :authenticate_user!

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(:first, :conditions => ["uuid = ? ", params[:id]])
    @interests = @user.interests
    @own_interests = Interest.all(:conditions => ["initiator = ? ", @user.id])
  end
end
