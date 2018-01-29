Rails.application.routes.draw do
  resources :courses, only: [:index, :show]

  root 'courses#index'

  post '/', to: 'courses#add'

  get '/login', to: 'sessions#index', as: 'login'

  post '/login', to: 'sessions#create'

  get '/user', to: 'sessions#show', as: 'user'
  post '/show', to: 'sessions#destroy', as: 'logout'
end
