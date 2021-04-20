module Types
  class LineItemGroupType < Types::BaseObject
    field :id, ID, null: false
    field :line_item, Types::LineItemType, null: false
    field :bid_invoice, Types::BidInvoiceType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
