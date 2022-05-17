Rails.application.routes.draw do
  get 'settings', to: 'settings#index'
  get 'leaves', to: 'leaves#index'
  get 'attendance', to: 'attendance#index'
  get 'dashboard', to: 'dashboard#index'
  get 'attendance', to: 'attendances#index'
  devise_for :employees
  resources :employees
  resources :project_managements
  resources :leave_types
  resources :designations
  resources :holidays 
  resources :roles
  
  # patch 'employees', to: 'employees#create'
  root 'pages#home'
end
