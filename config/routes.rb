Rails.application.routes.draw do
  resources :holidays
  devise_for :employees
  resources :roles
  root 'pages#home'
end
