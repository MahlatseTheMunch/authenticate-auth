Rails.application.routes.draw do
  get 'sessions/index'
  get 'sessions/dashboard'
  get 'sessions/login'
  get 'sessions/create'
  get 'sessions/new'
  get 'sessions/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'login', to: 'sessions#login'

  
  # Defines the root path route ("/")
  root "sessions#dashboard"
end
