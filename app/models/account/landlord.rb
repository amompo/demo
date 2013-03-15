module Account
  class Landlord < User
    include BasicDocument

    embedded_in :account, polymorphic: true
  end
end