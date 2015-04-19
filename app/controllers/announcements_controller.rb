class AnnouncementsController < ApplicationController
  before_action :authenticate_user!
  before_action :user_owns_announcement?, :only => [:edit, :destroy]
  before_action :user_owns_comment?, :only => [:del_comment]
  before_action :visited_announcements?, :only => [:index]
  helper_method :sort_column, :sort_direction

  def index
    if params[:tag].nil?
      @announcement = Announcement.all
    else
      @announcement = Announcement.tagged_with(params[:tag])
    end
    @announcements = Announcement.paginate(page: params[:page], per_page: 2)
    @tags = Tag.find(:all, :conditions => ["taggings_count > 0"]).first(10)
  	@announcements = @announcement.order(sort_column + ' ' + sort_direction)
    @self_announcements = Announcement.find_all_by_user_id(current_user.id)
  end

  def edit
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
    @announcement.tag_list.remove(current_tags)
    @announcement.save!
    @announcement.destroy
    flash[:notice]="You deleted your announcement"
    redirect_to announcements_path
  end
  
  def add_comment
    @comment = Comment.new(comment_params)
    if @comment.save!
      flash[:success]="You added a new comment!"
      redirect_to announcement_path(comment_params[:announcement_id])
    else
      flash[:alert]="Something went wrong :( Please report this bug at admin@aludir.net"
      redirect_to root_path
    end
  end
  
  def del_comment
    @announcement = @comment.announcement_id
    @comment.destroy
    
    flash[:notice]="You deleted your comment successfully"
    redirect_to announcement_path(@announcement)
  end

  def create
  	@announcement = Announcement.new(announcement_params)
  	@announcement.tag_list.add(new_tags)
  	if @announcement.save!
  	  flash[:success]="You created an announcement successfully!"
    	redirect_to announcements_path
    else
     flash[:alert]="Something went wrong :( Please report this bug at admin@aludir.net"
     render_to new_announcement_path
    end
  end

  def update
    @announcement = Announcement.find(params[:id])    
    @announcement.tag_list.remove(current_tags - new_tags)
    @announcement.tag_list.add(new_tags - current_tags)
    
    if @announcement.update(announcement_params)
      flash[:success]="You updated your announcement successfully!"
      redirect_to @announcement
    else
      flash[:alert]="Something went wrong :( Please report this bug at admin@aludir.net"
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
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "desc"
  end
  
  def user_owns_announcement?
    @announcement = Announcement.find(params[:id])
    if !user_validation(@announcement)
      flash[:alert]="You are not the owner of this announcement!"
      redirect_to announcements_path
    end
  end
  
  def user_owns_comment?
    @comment = Comment.find(params[:id])
    if !user_validation(@comment)
      flash[:alert]="You are not the owner of this comment!"
      redirect_to announcement_path(@comment.announcement.id)
    end
  end
  
  def user_validation(resource)
    resource.user.id == current_user.id
  end
  
  def visited_announcements?
    current_user.visited_announcements_at = Time.now
    current_user.save!
  end
  
  def current_tags
    @announcement.tag_list
  end
  
  def new_tags
    tag_params.values.first.split(',')
  end
end
