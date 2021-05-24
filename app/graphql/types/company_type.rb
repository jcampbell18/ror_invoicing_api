module Types
  class CompanyType < Types::BaseObject
    field :id, ID, null: false
    field :company_category, Types::CompanyCategoryType, null: false
    field :name, String, null: true
    field :address, String, null: true
    field :city, String, null: true
    field :state, Types::StateType, null: false
    field :zipcode, String, null: true
    field :full_address, String, null: false
    field :phone, String, null: true
    field :fax, String, null: true
    field :website_url, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end

  def full_address
    let city_state_zipcode([object.address, object.city, object.state.abbreviation].compact).join(', ')
    ([city_state_zipcode, object.zipcode].compact).join(' ')
  end
end
