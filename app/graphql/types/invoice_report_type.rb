module Types
  class InvoiceReportType < Types::BaseObject
    field :id, ID, null: false
    field :invoice_id, Integer, null: false
    field :paid, Boolean, null: true
    field :paid_date, GraphQL::Types::ISO8601Date, null: true
    field :paid_checknum, String, null: true
    field :loan_amount, Float, null: true
    field :loan_paid, Boolean, null: true
    field :project_cost, Float, null: true
    field :interest_amount, Float, null: true
    field :interest_paid, Boolean, null: true
    field :tax_amount, Float, null: true
    field :net_amount, Float, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
