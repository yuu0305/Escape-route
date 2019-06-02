Rails.application.routes.draw do
  root 'talks#top'
  resources :talks
  resources :notifies, only: [:new ,:create]
end
