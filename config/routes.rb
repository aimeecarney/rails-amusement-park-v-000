Rails.application.routes.draw do
  resources :users
  resources :attractions
  root 'users#home'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get 'logout' => 'sessions#destroy'
  post '/rides/create' => 'rides#create'
end
