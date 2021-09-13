Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # resources :party_animals, only: [ :index, :show, :new, :create ]
  resources :bookings, only: [ :index]
  resources :party_animals, only: [ :index, :show, :new, :create ] do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings, only: [ :destroy ]
end
