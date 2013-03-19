class Symbol
  def landlord?
    self == :landlord
  end

  def tenant?
    self == :tenant
  end

  def logged_in?
    true
  end

  def type
    self
  end
end