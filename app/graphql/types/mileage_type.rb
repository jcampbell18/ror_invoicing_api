module Types
  class MileageType < Types::BaseObject
    field :id, ID, null: false
    field :vehicle_id, Integer, null: false
    field :drive_date, GraphQL::Types::ISO8601Date, null: true
    field :start_mileage, Float, null: true
    field :end_mileage, Float, null: true
    field :total_mileage, Float, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
