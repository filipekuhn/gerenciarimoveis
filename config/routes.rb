Rails.application.routes.draw do
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
