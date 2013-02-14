module Landlords
	class DialogsController < ApplicationController
		def index
			raise "User not logged in" unless current_user
			@property = Property.create_random
			render layout: 'mail'
		end

		def show
			raise "User not logged in" unless current_user
			render layout: 'single_item'
		end
	end
end