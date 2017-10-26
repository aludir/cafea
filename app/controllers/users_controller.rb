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
    @user = current_user
    @interests = @user.interests
    @own_interests = Interest.where(initiator: @user.id)
  end
end
