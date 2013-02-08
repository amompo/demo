class User
	include ::ActiveModel::Model

	attr_accessor :name, :logged_in, :email, :password

	def self.logged_in!
		self.new logged_in: true
	end

	def name
		'Alex'
	end

	def display
		"#{name} is #{login_status}"
	end

	def login_status
		logged_in? ? 'logged in' : 'not logged in'
	end

	def logged_in?
		@logged_in
	end

	def logged_out?
		!logged_in?
	end
end