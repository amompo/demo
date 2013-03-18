Danrent::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root to: 'properties#new'

  resources :properties, only: [:show, :index, :edit, :new] do
    member do
      get 'edit/details', to: 'properties#edit_details'
    end
  end

  resources :tenants, only: [] do
    # resources :conversations, only: [:index]
    # resources :dialogs, only: [:show]    
  end

  # resources :users do
  # end

  scope :user do
    get 'favorites', to: 'users/properties#favorites'
  end

  # scope :system do
  #   # resources :dialog, only: [:index, :show]
  #   get 'dialogs/:id',    to: 'system/dialogs#show',  as: :system_dialog
  #   get 'dialogs',        to: 'system/dialogs#index', as: :system_dialogs
  # end

  scope :tenant do
    get 'conversations', to: 'tenants/conversations#index', as: :tenant_conversations
    get 'dialogs',       to: 'tenants/dialogs#index'

    get 'dialogs/:id',   to: 'tenants/dialogs#show', as: :tenant_dialog

    get 'system/dialogs/:id',   to: 'system/dialogs#show',  as: :tenant_system_dialog
    get 'system/dialogs',       to: 'system/dialogs#index', as: :tenant_system_dialogs

    # resources :dialog, only: [:show]
  end

  scope :landlord do
    get 'manage',        to: 'landlords/properties#manage'
    get 'conversations', to: 'landlords/conversations#index', as: :landlord_conversations

    # resources :dialog, only: [:index, :show]
    get 'dialogs/:id',   to: 'landlords/dialogs#show',  as: :landlord_dialog
    get 'dialogs',       to:  'landlords/dialogs#index', as: :landlord_dialogs

    get 'system/dialogs/:id',   to: 'system/dialogs#show',  as: :landlord_system_dialog
    get 'system/dialogs',       to: 'system/dialogs#index', as: :landlord_system_dialogs
  end


  resources :sessions, only: [:new, :destroy]  

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
