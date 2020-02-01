Rails.application.routes.draw do
  mount ActionCable.server => '/ptt'
  resources :web_connect, only: [:create]
end
