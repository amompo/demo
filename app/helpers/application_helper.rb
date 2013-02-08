module ApplicationHelper

	def user_session
		session[:user].logged_in? ? 'user_session' : 'login'
	end

	def reverse_mode mode = :gallery
		mode.to_sym == :gallery ? 'map' : 'gallery'
	end
end
