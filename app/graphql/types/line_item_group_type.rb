module Types
  class LineItemGroupType < Types::BaseObject
    field :id, ID, null: false
    field :line_item_id, Integer, null: false
    field :bid_invoice_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
