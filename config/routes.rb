Rails.application.routes.draw do
  root 'users#index'
  get '/users', to: 'users#index'
  get '/users/signup', to: 'users#new'
  post '/users', to: 'users#create' # creates a user
  post '/login', to: 'sessions#create'
end
