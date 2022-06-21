Rails.application.routes.draw do
  devise_for :users
  root to: 'customers#index'
  resources :menus, only: [:index, :create]
  resources :customers
end
