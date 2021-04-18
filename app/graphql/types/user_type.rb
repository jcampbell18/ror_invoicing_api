module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :user_category_id, Integer, null: false
    field :company_id, Integer, null: false
    field :email, String, null: true
    field :password, String, null: true
    field :salt, String, null: true
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :phone, String, null: true
    field :phone_extension, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
