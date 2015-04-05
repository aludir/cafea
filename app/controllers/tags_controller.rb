class TagsController < ApplicationController
	respond_to :json
	def index
	  
	  tags = Array.new
    Tag.all.each do |t|
      tags << Hash[:id, t[:id],:text, t[:name]]
    end
		respond_with(tags) do |format|
			format.json{render :json => tags.as_json(:only => [:id, :text])}
		end
	end
end