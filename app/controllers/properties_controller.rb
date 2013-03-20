class PropertiesController < ApplicationController
	def new
		session[:user] = :landlord
		@name = params[:id]
		@mode = params[:mode] || 'edit_location'

		@page = Page.new name: :property, mode: @mode
		
		@property = Property.new

		render layout: 'single_item'		
	end

	def show
		@name = params[:id]
		@mode = params[:mode] || 'gallery'
		@page = Page.new name: :property, mode: @mode
		
		render layout: 'single_item'
	end

	def edit
		@name = params[:id]
		@mode = params[:mode] || 'edit_location'
		@page = Page.new name: :property, mode: @mode

		@property = Property.find @name
		
		render layout: 'single_item'
	end

	def index
		@properties = Property.all
		@page = Page.list! :property_search

		render layout: 'list'
	end

	# fancybox ajax
	def edit_details
		@name = params[:id]
		
		render layout: 'fancybox'
	end
end