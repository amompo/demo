module Landlords
	class PropertiesController < ApplicationController
		def manage
			validate_login!

			@properties = current_user.properties :owned

			@page = Page.list! :property_management

			@max_properties = 3

			render layout: 'list'
		end
	end
end