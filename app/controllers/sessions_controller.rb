class SessionsController < ApplicationController
	def new
		session[:user] = User.logged_in!
		redirect_to root_path
	end

	def destroy
		session[:user] = nil
		redirect_to root_path
	end
end