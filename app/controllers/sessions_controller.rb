class SessionsController < ApplicationController
	def new
		session[:user] = :tenant
		redirect_to :back
	end

  def create
    # sorcery
    login params[:email], params[:password]
  end

	def destroy
		session[:user] = nil
		redirect_to :back
	end
end
