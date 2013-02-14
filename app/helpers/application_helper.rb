module ApplicationHelper

	def user_session
		session[:user].logged_in? ? 'user_session' : 'login'
	end

	def reverse_mode mode = :gallery
		case mode.to_sym
		when :gallery
			'map'
		when :map
			'gallery'
		when :edit_map
			'edit_details'
		when :edit_details
			'edit_map'
		else
			raise ArgumentError, "Unknown mode: #{mode}"
		end
	end
end
