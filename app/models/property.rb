class Property
	include ::ActiveModel::Model

	attr_accessor :name, :cost, :currency, :city, :title, :id

	def id
		rand(10)
	end

	def self.create_random
		Property.new name: random_name, title: 'Beatiful apartment in the...', cost: random_cost, currency: random_currency, city: 'Copenhagen'
	end

	def self.featured_ads count = 6
		count.times.map { Property.create_random }
	end

	def self.favorites user
		10.times.map { Property.create_random }
	end

	def self.all count = 10
		(rand(count)+10).times.map { Property.create_random }
	end

	def mail
		@mail ||= Mail.new
	end

	def favorite
		@favorite ||= Favorite.new
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

	protected

	def self.random_currency
		['DKK', 'SEK', 'NOK'].sample
	end

	def self.random_name
		['nyhavn', 'tivoli'].sample
	end

	def self.random_cost
		3000 + (rand(4) * 1000)
	end
end