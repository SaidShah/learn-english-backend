class User < ApplicationRecord

has_secure_password
validates :username, uniqueness: { case_sensitive: false }

has_many :user_exercises
has_many :user_quizzes
has_many :exercises, through: :user_exercises
has_many :quizzes, through: :user_quizzes
end
