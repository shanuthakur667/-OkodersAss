class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user

  validates :ans_content, presence: true
end
