class UserQuizSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :quiz_id

  belongs_to :user
  belongs_to :quiz
end
