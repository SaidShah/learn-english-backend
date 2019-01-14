class Quiz < ApplicationRecord


  belongs_to :level
  has_many :user_quizzes
  has_many :users, through: :user_quizzes
end
