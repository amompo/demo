class User
	include Mongoid::Document
  include User::Sorcerer
	include_concerns :accounts

	field :name
	field :email
	field :password

	def logged_in?
		true
	end

	def guest?
		false
	end

	def favorites
		Property.favorites self
	end

	def properties type = :owned
		case type
		when :owned
			Property.owned_by self
		else
			raise "ERROR: #{type} - not yet supported!"
		end
	end

	def type
		tenant? ? :tenant : :landlord
	end

	def display
		"Hi #{name} (#{type})"
	end

	class << self
		# factory methods
		def logged_in!
			tenant!
		end

		def guest!
			Guest.instance
		end

		def landlord!
			@landlord ||= User.create name: 'Alex', email: 'alex@danrent.dk'
		end

		def tenant!
			@tenant ||= User.create name: 'Kris', email: 'kris@danrent.dk'
		end
	end	
end