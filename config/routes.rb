Rails.application.routes.draw do
  devise_for :users
  root to: "offers#index"

  resources :offers, only: [:new, :create, :show, :index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
