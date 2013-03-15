module Tenants
	class ConversationsController < ApplicationController
		def index
			validate_login!

      @system_conversations   = tenant.system_conversations
      @property_conversations = tenant.property_conversations
			
			render layout: 'list'
		end
	end
end