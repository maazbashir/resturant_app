Rails.application.routes.draw do

  root "pizzas#index"
  resources :promotions
  resources :discounts
  resources :orders
  resources :ingrediants
  resources :pizzas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
end
