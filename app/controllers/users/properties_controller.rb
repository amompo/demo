module Users	
	class PropertiesController < ApplicationController
		def favorites
			raise "User not logged in" unless session[:user]
			@properties = session[:user].favorites
			render layout: 'list'
		end
	end
end