module Types
  class BidType < Types::BaseObject
    field :id, ID, null: false
    field :bid_status_id, Integer, null: false
    field :project_site_id, Integer, null: false
    field :company_id, Integer, null: false
    field :bid_date, GraphQL::Types::ISO8601Date, null: true
    field :total, Float, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
