Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  resources :users, only: [:show]
  resources :events do
  	resources :attendances, except: [:new, :show, :edit] do
  		resources :charges
  	end
  end
  root 'events#index'
end
