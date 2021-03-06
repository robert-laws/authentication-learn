Rails.application.routes.draw do
  resources :courses, only: [:index, :show]
  post '/courses', to: 'courses#add'
  get '/info', to: 'courses#info'

  # root 'courses#index'

  # post '/', to: 'courses#add'

  # get '/login', to: 'sessions#index', as: 'login'
  # post '/login', to: 'sessions#create'

  # get '/user', to: 'sessions#show', as: 'user'
  # post '/show', to: 'sessions#destroy', as: 'logout'

  root 'application#hello'

  # root 'welcome#home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  resources :users, only: [:new, :create]
end
