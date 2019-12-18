module Types
  class CommentType < Types::BasicObject
    field :id, ID, null: false
    field :post, PostType, null: false
  end
end
