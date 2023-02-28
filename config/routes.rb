Rails.application.routes.draw do
  devise_for :users
  root to: "offers#index"

  resources :offers, only: [:new, :create, :show, :index] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
