class Topic < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :user_topics
  has_many :users, through: :user_topics

  enum category: {"science" => 0, "defence" => 1, "politics" => 2}
end
