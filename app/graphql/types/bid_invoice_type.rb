module Types
  class BidInvoiceType < Types::BaseObject
    field :id, ID, null: false
    field :bid, Types::BidType, null: false
    field :invoice, Types::InvoiceType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
