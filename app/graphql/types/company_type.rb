Types::CompanyType = GraphQL::ObjectType.define do
  name 'Company'

  field :id, !types.ID
  field :name, !types.String
  field :address, types.String
  field :city, !types.String
  field :zipcode, types.String
  field :phone, !types.String
  field :fax, types.String
  field :website_url, !types.String

  field :company_categories, !types[Types::CompanyCategoryType] do
    preload :rentals
    resolve -> (obj, args, ctx) { obj.company_categories }
  end
  field :states, !types[Types::StateType] do
    preload :states
    resolve -> (obj, args, ctx) { obj.states }
  end
end