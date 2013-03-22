class PropertiesController < ApplicationController
  # use_focused_macros

  # focused_base_action :action do
  # end

  # # displays the list of properties matching the current search criteria
  # focused_action :search do
  #   # call .to_gmaps4rails for map view
  #   expose(:properties) do
  #     Property.search(search_criteria)
  #   end

  #   # should do a default search
  #   run do
  #     command! :save_search_criteria

  #     render view_mode
  #   end 

  #   protected

  #   session_method  :search_criteria
  #   param_method    :view_mode, default: 'list'
  # end


	def new
		session[:user] = :landlord
		@name = params[:id]
		@mode = params[:mode] || 'edit_location'
		
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