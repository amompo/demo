module Landlords
	class PropertiesController < ApplicationController
		def manage
			raise "User not logged in" unless session[:user]
			@properties = session[:user].properties :owned
			render layout: 'list'
		end
	end
end