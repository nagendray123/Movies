Rails.application.routes.draw do
  devise_for :users
  
  get 'home/about'
  root 'home#index'

  resources :movies
  resources :bookings
  resources :theaters
  resources :users

  resources :theaters do 
    resources :bookings
  end

end
