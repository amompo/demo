class Property
	include Mongoid::Document

	include_concerns :all

	attr_accessor :name, :cost, :currency, :city, :title, :id

	attr_accessor :search_location

	# TODO: Move to on_the_map - Address class
	alias_method :floor_address, 	:floor_adr 
	alias_method :floor_address=,	:floor_adr=

	def cost
		@cost ||= 1000 + rand(5)*1000
	end

	def mail
		@mail ||= Mail.new
	end

	def favorite
		@favorite ||= Favorite.new
	end

	class << self
		# factory methods
		def create_random
			Property.create title: 'Beatiful apartment in the city', description: 'Very nice place indeed...', location: 'Copenhagen'
		end

		def featured_ads count = 6
			count.times.map { Property.create_random }
		end

		def favorites user
			10.times.map { Property.create_random }
		end

		def owned_by user
			(rand(2) +1).times.map { Property.create_random }
		end

		protected

		def random_currency
			['DKK', 'SEK', 'NOK'].sample
		end

		def random_name
			['nyhavn', 'tivoli'].sample
		end

		def random_cost
			3000 + (rand(4) * 1000)
		end
	end

	class Mail
		def status
			'unread'
		end
	end

	class Favorite
		def status
			'on'
		end
	end
end