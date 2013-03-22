class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # decorates_before_render
  context_exposer :resource, with: :decent_exposure
  expose_cached(:first_post) { Post.first } 

  protected

  def current_user
    :landlord
  end

  def validate_login!
  end

  def mode
    params[:mode]
  end

  def id
    params[:id]
  end  

  %i{a d s}
end