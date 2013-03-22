class MainController < ApplicationController
	layout 'cover'

  exposed :featured_ads

	def cover
		@featured_ads = Property.featured_ads
	end
end