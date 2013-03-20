class Page
	include ::ActiveModel::Model

	attr_accessor :name, :type, :mode

  def map?
    mode && mode.to_s =~ /location/
  end

	def self.list! name = nil
		self.new type: :list, name: name		
	end
end