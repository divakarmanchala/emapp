Rails.application.routes.draw do
  resources :leaves
  get 'settings', to: 'settings#index'
  get 'dashboard', to: 'dashboard#index'
  devise_for :employees
  resources :employees
  resources :project_managements
  resources :leave_types
  resources :designations
  resources :holidays 
  resources :roles
  resources :attendances
  
  # patch 'employees', to: 'employees#create'
  root 'pages#home'
end
