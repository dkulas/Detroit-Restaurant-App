Rails.application.routes.draw do
  root "home#index"

  devise_for :users, :path => 'accounts'

  resources :users do
  	resources :comments
  end
end
