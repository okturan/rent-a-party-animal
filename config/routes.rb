Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :partyanimals, only: [ :index, :show, :new, :create ]
  resources :bookings, only: :destroy
end
