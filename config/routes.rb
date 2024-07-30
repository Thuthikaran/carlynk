Rails.application.routes.draw do
  devise_for :users
  resources :cars
  resources :reservations, only: [:create]
  resources :reviews
  root "cars#index"  
end
