class UserSerializer < ActiveModel::Serializer
  attributes :first_name, :id, :last_name, :age, :username

  has_many :user_exercises
  has_many :user_quizzes
  has_many :exercises, through: :user_exercises
  has_many :quizzes, through: :user_quizzes
end
