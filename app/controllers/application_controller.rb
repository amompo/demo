class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_session

  protected

  def tenant
    raise "Tenant logged in" unless current_user.type == 'tenant'
    current_user
  end

  def set_session
  	session[:user] ||= User.guest!
  end

  def current_user
  	session[:user]
  end

  def validate_login!
    redirect_to root_path unless current_user
  end
end
