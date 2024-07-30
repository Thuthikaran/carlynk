Rails.application.routes.draw do
  devise_for :users
  resources :cars do 
    resources :reservations, only: [:create]
  end
  
  resources :reviews
  root "pages#home"  
end
