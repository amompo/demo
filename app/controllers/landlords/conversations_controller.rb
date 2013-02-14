module Landlords
	class ConversationsController < ApplicationController
		def index
			raise "User not logged in" unless current_user
			render layout: 'list'
		end
	end
end