module User::Account
  class Tenant < Base    
    include_concerns  :package, :account
  end
end