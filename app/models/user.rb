class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :questions
  has_many :answers
  has_many :user_topics
  has_many :topics, through: :user_topics
  # has_many :following_relationships, foreign_key: "follower_id", class_name: "Follower"
  # has_many :user_relationships, foreign_key: "following_id", class_name: "Following"
  # has_many :following_users, through: :following_relationships, source: :following_users
  has_many :user_relationships

  def following
    user_relationships.where(relation_type: "following", relationable_id: id)
  end

  def follower
    user_relationships.where(relation_type: "follower", relationable_id: id)
  end
end
