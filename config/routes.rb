Rails.application.routes.draw do
  devise_for :visitors
  devise_for :admins
  root to: 'home#index'
  #HomeController
  get 'rent', to: :rent, controller: 'home'
  get 'sale', to: :sale, controller: 'home'

  resources :properties, only: [:show]
  resources :visitors_properties, shallow: true
  #Users
  namespace :users do
    resources :properties
    resources :visitors_properties, only: [:show]

  end
  namespace :users do
    get 'dashboard', to: 'dashboard#index'
  end

  #Devise
  devise_for :users

  authenticate :admin do
   namespace :admins do
     get 'dashboard', to: 'dashboard#index'
     get 'properties', to: 'properties#index'

     resources :users do
       resources :properties, only: [:edit, :update, :destroy, :show]
     end
   end
 end


end
