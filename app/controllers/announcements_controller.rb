class AnnouncementsController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
  	@announcements = Announcement.all
  end
end
