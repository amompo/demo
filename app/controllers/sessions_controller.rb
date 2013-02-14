class SessionsController < ApplicationController
	def new
		session[:user] = User.tenant!
		redirect_to :back
	end

	def destroy
		session[:user] = nil
		redirect_to :back
	end
end
