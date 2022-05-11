Rails.application.routes.draw do
  resources :project_managements
  resources :leave_types
  resources :designations
  resources :holidays
  devise_for :employees
  resources :roles
  root 'pages#home'
end
