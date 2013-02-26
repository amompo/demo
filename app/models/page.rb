class Page
	include ::ActiveModel::Model

	attr_accessor :name, :type

	def self.list! name = nil
		self.new type: :list, name: name		
	end
end