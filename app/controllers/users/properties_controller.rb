module Users	
	class PropertiesController < ApplicationController
		def favorites
			validate_login!

			@page = Page.list! :favorites

			@properties = current_user.favorites

			render 'sessions/favorites', layout: 'list'
		end
	end
end