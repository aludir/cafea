class TagsController < ApplicationController
	respond_to :json
	def index
		tags = Tag.all
		respond_with(tags) do |format|
			format.json{render :json => tags.as_json(:only => [:name])}
		end
	end
end