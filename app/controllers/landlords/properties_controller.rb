module Landlords
	class PropertiesController < ApplicationController
		def manage
			raise "User not logged in" unless current_user

			@properties = current_user.properties :owned

			@page = Page.list! :property_management

			@max_properties = 3

			render layout: 'list'
		end
	end
end