module Types
  class ImageExpenseType < Types::BaseObject
    field :id, ID, null: false
    field :image_id, Integer, null: false
    field :expense_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
