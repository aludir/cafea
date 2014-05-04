class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
  end
  def show
    
  end
  def edit
    @user = User.find(params[:id])
  end
end
