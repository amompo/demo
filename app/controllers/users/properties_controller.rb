module Users	
	class PropertiesController < ApplicationController
		def favorites
			raise "User not logged in" current_user

			puts "FAVORITES"			

			@page = Page.list! :favorites

			puts "page: #{@page}"

			@properties = current_user.favorites

			puts "favorites: #{@properties}"

			render 'sessions/favorites', layout: 'list'
		end
	end
end