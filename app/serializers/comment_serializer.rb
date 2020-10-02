class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :owner
end
