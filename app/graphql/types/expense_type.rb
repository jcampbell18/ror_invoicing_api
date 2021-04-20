module Types
  class ExpenseType < Types::BaseObject
    field :id, ID, null: false
    field :expense_category, Types::ExpenseCategoryType, null: false
    field :company, Types::CompanyType, null: false
    field :expense_date, GraphQL::Types::ISO8601Date, null: true
    field :total, Float, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
