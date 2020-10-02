class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  def user_name
    self.user.username
  end
end
