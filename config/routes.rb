Rails.application.routes.draw do
  devise_for :users
  root 'routes#top'
  resources :routes, only: [:index]
  resources :talks
  resources :notifies, only: [:new ,:create]
end
