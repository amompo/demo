class MainController < ApplicationController
	layout 'cover'

	def cover
		@featured_ads = Property.featured_ads
	end
end