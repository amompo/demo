module Tenants
	class DialogsController < ApplicationController
		def index
			validate_login!

			render layout: 'list'
		end

		def show
			validate_login!
			
			render layout: 'single_item'
		end
	end
end