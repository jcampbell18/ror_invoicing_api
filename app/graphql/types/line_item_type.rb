module Types
  class LineItemType < Types::BaseObject
    field :id, ID, null: false
    field :sku, Types::SkuType, null: false
    field :description, String, null: true
    field :amount, Float, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
