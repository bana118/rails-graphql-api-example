# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :users, [Types::UserType], null: false, description: "ユーザ情報を全件取得する"
    def users
      user_table = [
        { "id" => 101, "name" => "Alice" },
        { "id" => 102, "name" => "Bob" },
        { "id" => 103, "name" => "Caroline" },
        { "id" => 104, "name" => "Dave" }
      ]
      user_table
    end
  end
end
