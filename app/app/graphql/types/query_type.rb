module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :post, PostType, "Find a post by ID" do
      argument :id, ID
    end

    def post(id:)
      Post.find(id)
    end
  end
end
