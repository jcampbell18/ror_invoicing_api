Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"
  namespace :api do
    namespace :v1 do
      resources :invoice_mileages
      resources :expense_item_groups
      resources :invoice_expenses
      resources :image_expenses
      resources :image_invoices
      resources :image_users
      resources :image_companies
      resources :line_item_groups
      resources :bid_invoices
      resources :invoice_reports
      resources :invoices
      resources :bids
      resources :users
      resources :expenses
      resources :mileages
      resources :companies
      resources :project_sites
      resources :line_items
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
    end
  end
end
