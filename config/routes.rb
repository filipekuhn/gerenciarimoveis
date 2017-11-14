Rails.application.routes.draw do
  devise_for :admins
  root to: 'home#index'
  #HomeController
  get 'rent', to: :rent, controller: 'home'
  get 'show', to: :show, controller: 'home'
  get 'sale', to: :sale, controller: 'home'

  resources :properties, only: [:show]
  #Users
  namespace :users do
    resources :properties
  end
  namespace :users do
    get 'dashboard', to: 'dashboard#index'
  end

  #Devise
  devise_for :users

  authenticate :admin do
   namespace :admins do
     get 'dashboard', to: 'dashboard#index'
     resources :users, only: [:destroy] 
   end
 end
end
