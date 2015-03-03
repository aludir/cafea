class AnnouncementsController < ApplicationController
  before_action :authenticate_user!

  def index
  	@announcements = Announcement.all
  end

  def edit
    @announcement = Announcement.find(params[:id])
  end

  def new
  	@announcement = Announcement.new
  end
  def show
  	@announcement = Announcement.find_by_id(params[:id])
  	@user = @announcement.user
  end

  def create
  	@announcement = Announcement.new(user_id: current_user.id, title: params[:announcement][:title], body: params[:announcement][:body])
  	@announcement.save!

  	redirect_to announcements_path
  end

  def update
    @announcement = Announcement.find(params[:id])
 
    if @announcement.update(announcement_params)
      redirect_to @announcement
    else
      render 'edit'
    end
  end

  private
  def announcement_params
    params.require(:announcement).permit(:id, :title, :body, :tags)
  end
end
