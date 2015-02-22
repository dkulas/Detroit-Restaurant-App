Rails.application.routes.draw do
  root "restaurants#index"

  devise_for :users, :path => 'accounts'

  resources :users do
  	resources :comments
  end

  resources :restaurants, only: [:index, :show]
end
