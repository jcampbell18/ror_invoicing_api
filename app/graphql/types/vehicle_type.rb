module Types
  class VehicleType < Types::BaseObject
    field :id, ID, null: false
    field :manufacturer_year, Integer, null: true
    field :make, String, null: true
    field :model, String, null: true
    field :sub_model, String, null: true
    field :engine, String, null: true
    field :notes, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
