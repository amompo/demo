module Tenants
	class DialogsController < ApplicationController
		def index
			raise "User not logged in" unless current_user
			render layout: 'list'
		end

		def show
			raise "User not logged in" unless current_user
			render layout: 'single_item'
		end
	end
end