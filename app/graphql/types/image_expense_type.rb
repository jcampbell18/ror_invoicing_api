module Types
  class ImageExpenseType < Types::BaseObject
    field :id, ID, null: false
    field :image, Types::ImageType, null: false
    field :expense, Types::ExpenseType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
