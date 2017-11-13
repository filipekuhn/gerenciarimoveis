Rails.application.routes.draw do
  devise_for :admins
  root to: 'home#index'
  #HomeController
  get 'rent', to: :rent, controller: 'home'
  get 'show', to: :show, controller: 'home'

  #Users
  namespace :users do
    resources :properties
  end
  namespace :users do
    get 'dashboard/index'
  end

  #Devise
  devise_for :users

  authenticate :admin do
   namespace :admins do
     get 'dashboard/index'
   end
 end
end
