module Types
  class BidType < Types::BaseObject
    field :id, ID, null: false
    field :bid_status, Types::BidStatusType, null: false
    field :project_site, Types::ProjectSiteType, null: false
    field :company, Types::CompanyType, null: false
    field :bid_date, GraphQL::Types::ISO8601Date, null: true
    field :total, Float, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
