Rails.application.routes.draw do
  root "restaurants#home_page"

  resources :users do
  	resources :votes
  end

  resources :comments

  resources :restaurants, only: [:index, :show]

  get '/auth/twitter/callback', to: 'sessions#create'
  get '/auth/failure', to: redirect('/')
  get '/signout' => 'sessions#destroy', :as => :signout
end
