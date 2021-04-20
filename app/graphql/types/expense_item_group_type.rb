module Types
  class ExpenseItemGroupType < Types::BaseObject
    field :id, ID, null: false
    field :expense, Types::ExpenseType, null: false
    field :expense_item, Types::ExpenseItemType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
