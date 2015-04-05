class AnnouncementsController < ApplicationController
  before_action :authenticate_user!
  helper_method :sort_column, :sort_direction

  def index
  	@announcements = Announcement.order(sort_column + ' ' + sort_direction)
    @self_announcements = Announcement.find_all_by_user_id(current_user.id)
  end

  def edit
    @announcement = Announcement.find(params[:id])
    @tags = Tag.all
    @selected = @announcement.tag_list
  end

  def new
  	@announcement = Announcement.new
  	@tags = Tag.all
  	@selected = nil
  end
  
  def show
  	@announcement = Announcement.find(params[:id])
  	@user = @announcement.user
  	@comment = Comment.new
  end

  def destroy
    @announcement = Announcement.find(params[:id])
    @announcement.destroy

    redirect_to announcements_path
  end
  
  def add_comment
    @comment = Comment.new(comment_params)
    if @comment.save!
      redirect_to announcements_path
    else
      redirect_to root_path
    end
  end

  def create
  	@announcement = Announcement.new(announcement_params)
  	@announcement.tag_list.add(tag_params.values.first.split(','))
  	if @announcement.save!
    	redirect_to announcements_path
   else
     render_to new_announcement_path
   end
  end

  def update
    @announcement = Announcement.find(params[:id])
    @announcement.tag_list.add(tag_params.values)
    
    if @announcement.update(announcement_params)
      redirect_to @announcement
    else
      render 'edit'
    end
  end

  private
  def announcement_params
    params.require(:announcement).permit(:user_id, :title, :body, :tag_list => [])
  end
  
  def comment_params
    params.require(:comment).permit(:user_id, :body, :announcement_id)
  end
  
  def tag_params
    params.require(:tags)
  end
  
  def sort_column
    Announcement.column_names.include?(params[:sort]) ? params[:sort] : 'created_at'
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end
end
