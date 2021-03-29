Rails.application.routes.draw do
  resources :expense_items
  resources :expense_categories
  resources :skus
  resources :vehicles
  resources :terms
  resources :images
  resources :company_categories
  resources :user_categories
  resources :bid_statuses
  resources :states
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
