module Types
  class ExpenseItemType < Types::BaseObject
    field :id, ID, null: false
    field :quantity, Integer, null: true
    field :name, String, null: true
    field :amount, Float, null: true
    field :subtotal, Float, null: true
    field :tax, Float, null: true
    field :total, Float, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
