Rails.application.routes.draw do
  resources :users
  root 'users#home'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get 'logout' => 'sessions#destroy'
end
