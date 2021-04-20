module Types
  class ImageInvoiceType < Types::BaseObject
    field :id, ID, null: false
    field :image, Types::ImageType, null: false
    field :invoice, Types::InvoiceType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
