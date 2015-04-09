class InterestsController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_action :is_member?, :only => :show
  
  def index
    @interests = Interest.all
  end
  
  def show
    @is_member = is_member?
  end
  
  def edit
    @interest = Interest.find(params[:id])
  end
  
  def new
    @interest = Interest.new
  end
  
  def create
    @interest = Interest.new(interest_params)
    if @interest.save!
      flash[:success]="You created new interest successfully!"
      redirect_to interests_path
    else
     flash[:alert]="Something went wrong :( Please report this bug at admin@aludir.net"
     render_to new_interest_path
    end
  end
  
  def update
    @interest = Interest.find(params[:id])
    
    if @interest.update(interest_params)
      flash[:success]="You updated your interest group successfully!"
      redirect_to @interest
    else
      flash[:alert]="Something went wrong :( Please report this bug at admin@aludir.net"
      render 'edit'
    end
  end
  
  def join
    if is_member?
      flash[:alert]='You are already part of this group'
    else
      flash[:success]='You joined this interest group!'
      @interest.users<< current_user
    end
    redirect_to interest_path(params[:id])
  end
  
  def leave
    if is_member?
      flash[:notice]='You left this group'
      @interest.users.destroy(current_user)
    else
      flash[:alert]='You are not part of this group'
    end
    redirect_to interest_path(params[:id])
  end
  
  private
  
  def interest_params
    params.require(:interest).permit(:initiator, :title, :description)
  end
  
  def sort_column
    Interest.column_names.include?(params[:sort]) ? params[:sort] : 'created_at'
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "desc"
  end
  
  def is_member?
    @interest = Interest.find(params[:id])
    @interest.users.exists?(current_user)
  end
end