class Property
	include ::ActiveModel::Model

	attr_accessor :name, :cost, :city

	def self.featured_ads count = 6
		count.times.map { Property.new name: random_name, cost: random_cost, city: 'Copenhagen '}
	end

	protected

	def self.random_name
		['nyhavn', 'tivoli'].sample
	end

	def self.random_cost
		3000 + (rand(4) * 1000)
	end
end