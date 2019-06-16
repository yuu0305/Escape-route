Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'routes#top'
  resources :routes, only: [:index]
  resources :users_rooms do
    resources :talks
  end
  resources :notifies, only: [:new ,:create]
end
