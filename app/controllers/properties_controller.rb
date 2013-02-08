class PropertiesController < ApplicationController
	def show
		@name = params[:id]
		@mode = params[:mode] || 'gallery'
		render layout: 'single_item'
	end

	def edit
		@name = params[:id]
		@mode = params[:mode] || 'gallery'
		render layout: 'single_item'
	end

	def index
		@properties = Property.all
		puts "properties: #{@properties}"
		render layout: 'list'
	end

	def new
	end
end