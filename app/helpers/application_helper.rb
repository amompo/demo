module ApplicationHelper

  def logged_in?
    session[:user]
  end

  def list?
    page.type == :list
  end

  def nav_button_path
    if landlord?      
      property_management? ? new_property_path : manage_properties_path
    else
      new_property_path
    end    
  end

  def nav_button_label
    if landlord?      
      property_management? ? "New property" : "Manage properties"
    else
      "Rent your home"
    end    
  end

  def landlord?
    session[:user] && session[:user].landlord?
  end

  def tenant?
    session[:user] && session[:user].tenant?
  end

  def property_search?
    @page && @page.name == :property_search
  end

	def user_session
		session[:user].logged_in? ? 'user_session' : 'login'
	end

	def reverse_mode mode = :gallery
		mode.to_sym == :gallery ? 'map' : 'gallery'
	end
end
