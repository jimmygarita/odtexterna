Rails.application.routes.draw do
  resources :work_details
  resources :work_orders
  resources :companies
  resources :products
  resources :working_areas
  resources :types
  resources :clients
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
