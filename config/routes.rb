Rails.application.routes.draw do
  devise_for :users
  root to: "offers#index"

  get '/dashboard', to: "pages#dashboard"

  resources :offers, only: [:new, :create, :show, :index, :edit, :update] do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:new, :create, :index]
  end
  resources :bookings, only: [:index, :show, :update]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
