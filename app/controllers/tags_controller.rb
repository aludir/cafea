class TagsController < ApplicationController
	respond_to :json
	def index
	  
	  # Making sure that only unique tags are shown in the typeahead
		tags = Tag.all.map { |k| k[:name]}.uniq.map {|v| Hash[:name, v]}
		respond_with(tags) do |format|
			format.json{render :json => tags.as_json(:only => [:name])}
		end
	end
end