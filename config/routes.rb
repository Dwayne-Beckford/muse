# config/routes.rb
# [...]

Rails.application.routes.draw do
  get 'artworks/index'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :artworks, only: [:index, :new, :create, :show, :update, :edit, :destroy] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:show, :index, :edit, :update, :destroy]
end
