module Tenants
	class ConversationsController < ApplicationController
		def index
			validate_login!
			
			render layout: 'list'
		end
	end
end