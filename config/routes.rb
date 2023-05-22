Rails.application.routes.draw do
  get 'ticket_booking/index'
  devise_for :users

 
  get 'home/about'
  root 'home#index'

  resources :movies
end
