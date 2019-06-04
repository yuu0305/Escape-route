Rails.application.routes.draw do
  root 'routes#top'
  resources :routes, only: [:index]
  resources :talks
  resources :notifies, only: [:new ,:create]
end
