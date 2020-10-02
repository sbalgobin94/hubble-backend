class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user
end
