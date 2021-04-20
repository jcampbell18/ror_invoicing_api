module Types
  class ImageCompanyType < Types::BaseObject
    field :id, ID, null: false
    field :image, Types::ImageType, null: false
    field :company, Types::CompanyType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
