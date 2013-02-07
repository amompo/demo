class PropertiesController < ApplicationController
	def show
		@name = params[:id]
	end

	def index
	end

	def new
	end
end