Rails.application.routes.draw do
  resources :product_orders
  resources :skus
  resources :product_option_values
  resources :product_options
  resources :products
  resources :orders
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
