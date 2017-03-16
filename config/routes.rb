Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/movies' => 'movies#index', as: :home
  # get '/movies/:id' => 'movies#show', as: :movie
  # get '/actors' => 'actors#index'
  # get '/movies/new' => 'movies#new'
  # get '/actors/:id' => 'actors#show', as: :actor
  #
  #
  # post 'movies' => 'movies#create'
  root 'movies#home', as: 'home'
  resources :movies
  resources :actors

  get 'signup' => 'users#new'
  resources :users

  get 'login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :sessions

end
