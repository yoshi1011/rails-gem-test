# frozen_string_literal: true

module Types
  class PostType < Types::BaseObject
    description "A blog post"
    field :id, ID, null: false
    field :title, String, null: false
    field :truncated_preview, String, null: false
    field :comments, [Types::CommentType], description: "This post's comments"
  end
end
