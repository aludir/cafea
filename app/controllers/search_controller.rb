class SearchController < ApplicationController

  def show
  @users = Search.for(params[:id_search], params[:name],
                      params[:surname], params[:old_surname],
                      params[:nickname]
                      )
  end

  def index
    if params[:search]
      @users = Search.for(params[:search]).limit(20)
    else
      @users = User.all.order('created_at DESC')
    end
  end

end
