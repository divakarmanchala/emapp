Rails.application.routes.draw do
  get 'dashboard', to: 'dashboard#index'
  devise_for :employees
  resources :employees
  resources :project_managements
  resources :leave_types
  resources :designations
  resources :holidays 
  resources :roles
  
  patch 'employees', to: 'employees#create'
  root 'pages#home'
end
