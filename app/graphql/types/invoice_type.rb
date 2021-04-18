module Types
  class InvoiceType < Types::BaseObject
    field :id, ID, null: false
    field :project_site_id, Integer, null: false
    field :company_id, Integer, null: false
    field :term_id, Integer, null: false
    field :start_date, GraphQL::Types::ISO8601Date, null: true
    field :complete_date, GraphQL::Types::ISO8601Date, null: true
    field :total, Float, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
