Rails.application.routes.draw do
  root 'talks#top'

  resources :talks
  resources :notifies, only: [:new ,:create]
  get 'notifies/create' => 'notifies#create'
  # 仮置きのcreate、一旦ビューを作るため追加
end
