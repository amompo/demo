module Tenants
	class ConversationsController < ApplicationController
		def index
			raise "User not logged in" unless session[:user]
			render layout: 'list'
		end
	end
end