module Types
  class ImageCompanyType < Types::BaseObject
    field :id, ID, null: false
    field :image_id, Integer, null: false
    field :company_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
