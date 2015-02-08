class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
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
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(:first, :conditions => ["uuid = ? ", params[:id]])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :surname, :birth_date, :old_surname, :nickname)
    end
end
