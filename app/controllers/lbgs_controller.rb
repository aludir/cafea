class LbgsController < ApplicationController

  def index
    @lbgs = Lbg.all
  end

  def show
    @lbg = Lbg.find(params[:id])
    @users = @lbg.users
  end

  def join
    if is_member?
      flash[:alert]='You are already part of this LBG'
    else
      flash[:success]='You added this LBG!'
      @lbg.users<< current_user
    end
    redirect_to user_path(current_user.uuid)
  end

  def leave
    if is_member?
      flash[:notice]='You left this group'
      @lbg.users.destroy(current_user)
    else
      flash[:alert]='You are not part of this group'
    end
    redirect_to user_path(current_user.uuid)
  end

  private
  def is_member?
    if params[:action] == "leave"
      @lbg = Lbg.find(params[:id])
    else
      @lbg = Lbg.find(lbg_params[:id])
    end
    @lbg.users.exists?(current_user.id)
  end

  def lbg_params
    params.require(:lbg).permit(:id, :name, :user_id)
  end
end
