class SessionsController < ApplicationController
	def new
		session[:user] = :tenant
		redirect_to :back
	end

  def create
    # sorcery
    login email, password #, remember_me
  end

	def destroy
		session[:user] = :guest
		redirect_to :back
	end

  protected

  def email
    params[:email]
  end

  def password
    params[:password]
  end

  def remember_me
    params[:remember_me]
  end
end
