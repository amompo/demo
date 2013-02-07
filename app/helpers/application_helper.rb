module ApplicationHelper

	def user_session
		session[:user].logged_in? ? 'user_session' : 'login'
	end
end
