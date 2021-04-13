Types::CompanyCategoryType = GraphQL::ObjectType.define do
  name 'Company'

  field :id, !types.ID
  field :name, !types.String
end