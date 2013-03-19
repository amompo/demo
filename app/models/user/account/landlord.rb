module User::Account
  class Landlord < Base    
    include_concerns  :properties, :package, :account
  end
end
