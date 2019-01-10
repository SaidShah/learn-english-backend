class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :level
  has_many :user_exercises
  has_many :users, through: :user_exercises
end
