Rails.application.routes.draw do

  resources :partyanimals, only: [ :index, :show, :new, :create ] do
    resources :bookmarks, only: [ :create, :new ]
  end

  resources :bookings, only: :destroy
end
