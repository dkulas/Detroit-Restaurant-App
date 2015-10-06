Rails.application.routes.draw do
  get 'static_pages/about'

  # get 'static_pages/code'

  root "restaurants#home_page"

  resources :restaurants, only: [:index, :show]
end
