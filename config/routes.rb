Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :partyanimals, only: [ :index, :show, :new, :create ] do
    resources :bookmarks, only: [ :create, :new ]
  end
  resources :bookings, only: :destroy
end
