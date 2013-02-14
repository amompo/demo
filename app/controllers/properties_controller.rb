class PropertiesController < ApplicationController
	def new
		session[:user] = User.landlord!
		@name = params[:id]
		@mode = params[:mode] || 'gallery'
		render layout: 'single_item'		
	end

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
end