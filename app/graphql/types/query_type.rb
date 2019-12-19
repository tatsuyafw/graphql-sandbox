module Types
  class QueryType < Types::BaseObject
    description "The query root of this schema"

    field :post, PostType, null: true do
      description "Find a post by ID"
      argument :id, ID, required: true
    end

    def post(id:)
      Post.find(id)
    end

    field :posts, [PostType], null: true do
      description "All posts"
    end

    def posts
      Post.all
    end
  end
end
