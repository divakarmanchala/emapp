Rails.application.routes.draw do
  get 'dashboard', to: 'dashboard#index'
  resources :project_managements
  resources :leave_types
  resources :designations
  resources :holidays
  devise_for :employees
  resources :roles
  root 'pages#home'
end
