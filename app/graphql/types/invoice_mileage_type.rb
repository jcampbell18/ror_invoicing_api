module Types
  class InvoiceMileageType < Types::BaseObject
    field :id, ID, null: false
    field :invoice_id, Integer, null: false
    field :mileage_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
