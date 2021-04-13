Types::StateType = GraphQL::ObjectType.define do
  name 'State'

  field :id, !types.ID
  field :abbreviation, !types.String
  field :name, !types.String
end