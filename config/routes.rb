Rails.application.routes.draw do
  root 'items#index'
  resources :items
  resources :carts
  resources :orders
  resources :join_table_cart_items
  get 'static_pages/index'
  get 'static_pages/secret'
  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
