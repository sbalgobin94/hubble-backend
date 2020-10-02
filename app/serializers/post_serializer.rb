class PostSerializer < ActiveModel::Serializer
    attributes :id, :description, :title, :image_url, :comments, :likes

    def comments
        self.object.comments.map do |comment|
            {
                content: comment.content,
                user: comment.user.username
            }
        end
    end
  end