class Property
	include ::ActiveModel::Model

	attr_accessor :name, :cost, :city, :id

	def id
		1
	end

	def self.featured_ads count = 6
		count.times.map { Property.new name: random_name, cost: random_cost, city: 'Copenhagen '}
	end

	def self.all count = 10
		rand(count+1).times.map { Property.new name: random_name, cost: random_cost, city: 'Copenhagen '}
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

	def self.random_name
		['nyhavn', 'tivoli'].sample
	end

	def self.random_cost
		3000 + (rand(4) * 1000)
	end
end