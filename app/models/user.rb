class User < ApplicationRecord
    has_many :posts, -> {order ("created_at")}, dependent: :destroy
end
