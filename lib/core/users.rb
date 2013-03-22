class Symbol
  def landlord?
    self == :landlord
  end

  def tenant?
    self == :tenant
  end

  def logged_in?
    tenant? || landlord?
  end

  def type
    self
  end

  def name
   landlord? ? 'Alex' : 'Kris'
  end 
end