module Types
  class InvoiceExpenseType < Types::BaseObject
    field :id, ID, null: false
    field :invoice, Types::InvoiceType, null: false
    field :expense, Types::ExpenseType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
