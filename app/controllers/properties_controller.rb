class PropertiesController < ApplicationController
	def show
		@name = params[:id]
		render layout: 'single_item'
	end

	def index
		@properties = Property.all
		render layout: 'list'
	end

	def new
	end
end