class PropertiesController < ApplicationController
	def show
		@name = params[:id]
		@mode = params[:mode] || 'gallery'
		render layout: 'single_item'
	end

	def edit
		@name = params[:id]
		@mode = params[:mode] || 'edit_map'
		render layout: 'single_item'
	end

	def index
		@properties = Property.all
		puts "properties: #{@properties}"
		render layout: 'list'
	end

	# fancybox ajax
	def edit_details
		@name = params[:id]
		render layout: 'fancybox'
	end

	def new
	end
end