class UserRelationship < ApplicationRecord
  # belongs_to :follower_user, class_name: 'User', foreign_key: "follower_id"
  # belongs_to :following_user, class_name: 'User', foreign_key: "following_id"
  belongs_to :user
  validates :relation_type, inclusion: { in: %w(follower following),
    message: "%{value} is not a valid type" }
end
