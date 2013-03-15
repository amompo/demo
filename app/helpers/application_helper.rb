module ApplicationHelper

  def current_user
    session[:user]
  end

  def conversation_class_for conversation
    case conversation.total_unread_dialogs
    when 0
      :read
    else
      :unread
    end
  end

  def user_type
    current_user.type
  end

  def logged_in?
     current_user.logged_in?
  end

  def list?
    @page && @page.type == :list
  end

  def nav_button_path
    if landlord?      
      property_management? ? new_property_path : manage_path
    else
      new_property_path
    end    
  end

  def conversations_nav_path
    send "#{current_user.type}_conversations_path"
  end

  def nav_button_label
    if landlord?      
      property_management? ? "New property" : "Manage properties"
    else
      "Rent your home"
    end    
  end

  def landlord?
    current_user.landlord?
  end

  def tenant?
    current_user.tenant?
  end

  def property_management?
    @page && @page.name == :property_management
  end

  def property_search?
    @page && @page.name == :property_search
  end

  def property_page?
    @page && @page.name == :property
  end

	def user_session
		logged_in? ? 'user_session' : 'login'
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
