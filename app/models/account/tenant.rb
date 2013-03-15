module Account
  class Tenant < User
    include BasicDocument

    embedded_in :account, polymorphic: true
  end
end