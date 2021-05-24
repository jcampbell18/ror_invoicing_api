# frozen_string_literal: true
module Types
  class StateType < Types::BaseObject
    description 'States and surrounding states of the US'

    field :id, ID, null: false
    field :name, String, null: false
    field :abbreviation, String, null: false
    field :abbreviation_dash_name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end

  def abbreviation_dash_name
    ([object.abbreviation, object.name].compact).join(' - ')
  end
end
