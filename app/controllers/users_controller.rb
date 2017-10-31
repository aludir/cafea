class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: :show

  # GET /users
  # GET /users.json
  def index
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true)
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @interests = @user.interests
    @own_interests = Interest.where(initiator: @user.id)
  end

  private
  def set_user
    @user = User.find_by(uuid: params[:id])
  end
end
