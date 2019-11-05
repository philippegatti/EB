Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :events
  root 'events#index'
end
