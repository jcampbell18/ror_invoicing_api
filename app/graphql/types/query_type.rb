module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World!"
    # end
    #
    field :companies, !types[Types::CompanyType] do
      argument :limit, types.Int, default_value: 20, prepare: -> (limit, ctx) { [limit, 30].min }
      resolve -> (obj, args, ctx) {
        Company.limit(args[:limit]).order(id: :desc)
      }
    end
  end
end
