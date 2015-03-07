class AnnouncementsController < ApplicationController
  before_action :authenticate_user!
  helper_method :sort_column, :sort_direction

  def index
  	@announcements = Announcement.order(sort_column + ' ' + sort_direction)
    @self_announcements = Announcement.find_all_by_user_id(current_user.id)
  end

  def edit
    @announcement = Announcement.find(params[:id])
  end

  def new
  	@announcement = Announcement.new
  end
  
  def show
  	@announcement = Announcement.find(params[:id])
  	@user = @announcement.user
  end

  def destroy
    @announcement = Announcement.find(params[:id])
    @announcement.destroy

    redirect_to announcements_path
  end

  def create
  	@announcement = Announcement.new(announcement_params)
  	@tags = @announcement.tags.build(tag_params)
  	if @announcement.save!
    	redirect_to announcements_path
   else
     render_to new_announcement_path
   end
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
    params.require(:announcement).permit(:user_id, :title, :body)
  end
  
  def tag_params
    params.require(:tags).permit(:name)
  end
  
  def sort_column
    Announcement.column_names.include?(params[:sort]) ? params[:sort] : 'created_at'
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end
end
