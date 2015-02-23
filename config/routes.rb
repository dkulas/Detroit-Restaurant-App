Rails.application.routes.draw do
  root "restaurants#index"

  resources :users do
  	resources :comments
  	resources :votes
  end

  resources :restaurants, only: [:index, :show]

  get '/auth/twitter/callback', to: 'sessions#create'
  get '/auth/failure', to: redirect('/')
  get '/signout' => 'sessions#destroy', :as => :signout
end
