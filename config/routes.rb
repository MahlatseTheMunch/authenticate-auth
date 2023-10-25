Rails.application.routes.draw do
  resources :vouchers
  resources :values
  resources :skhokhos
  resources :sharepoints
  resources :roles
  resources :regions
  resources :period_types
  resources :leaves
  resources :leave_types
  resources :leave_statuses
  resources :leave_histories
  resources :leave_attachments
  resources :leave_accruals
  resources :holidays
  resources :employees
  resources :employee_roles
  resources :category_values
  resources :categories
  resources :approvals
  resources :allocation_types
  
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
