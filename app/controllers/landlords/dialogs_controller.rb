module Landlords
	class DialogsController < ApplicationController
		def index
			validate_login!

			@property = Property.create_random
			render layout: 'mail'
		end

		def show
			validate_login!
			
			render layout: 'single_item'
		end
	end
end