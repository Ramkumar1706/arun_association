Rails.application.routes.draw do
  resources :customers
  resources :nbas
  resources :trademarks
  resources :designs
  resources :patents

  devise_for :users, controllers: { sessions: 'users/sessions' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'home#index'
end
