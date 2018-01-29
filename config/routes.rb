Rails.application.routes.draw do
  resources :courses, only: [:index, :show]

  root 'courses#index'

  post '/' => 'courses#add'
end
