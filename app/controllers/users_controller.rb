class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  respond_to :json

  # GET /users
  # GET /users.json
  def index
    users = User.all
    
    respond_with(users) do |format|
      format.json{render :json => users.as_json(:only => [:name,:surname,:uuid])}
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    respond_with(@user) do |format|
      format.json{render :json => @user.as_json(:except => [:id,:created_at,:updated_at])}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(:first, :conditions => ["uuid = ? ", params[:id]])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :surname, :birth_date,:old_surname, :nickname)
    end
end
