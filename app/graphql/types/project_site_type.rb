module Types
  class ProjectSiteType < Types::BaseObject
    field :id, ID, null: false
    field :address, String, null: true
    field :city, String, null: true
    field :state_id, Integer, null: false
    field :zipcode, String, null: true
    field :access_code, String, null: true
    field :map_url, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
