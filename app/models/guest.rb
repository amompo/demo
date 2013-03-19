class Guest < User
  include Singleton

  def logged_in?
    false
  end

  def guest?
    true
  end

  def type
    :guest
  end  
end
