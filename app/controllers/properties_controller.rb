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
		@mode = params[:mode] || 'edit_map'
		render layout: 'single_item'
	end

	def index
		@properties = Property.all
		puts "properties: #{@properties}"
		render layout: 'list'
	end
<<<<<<< HEAD

	# fancybox ajax
	def edit_details
		@name = params[:id]
		render layout: 'fancybox'
	end

	def new
	end
=======
>>>>>>> 621e5e93d281fed99c0dea6774d53f535001d9f0
end