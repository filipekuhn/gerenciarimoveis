Rails.application.routes.draw do
  namespace :users do
    resources :properties
  end
  namespace :users do
    get 'dashboard/index'
  end

  root to: 'home#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
