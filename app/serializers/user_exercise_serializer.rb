class UserExerciseSerializer < ActiveModel::Serializer
  attributes :id, :completed, :user_id, :exercise_id

  belongs_to :user
  belongs_to :exercise 
end
