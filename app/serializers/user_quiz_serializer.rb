class UserQuizSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :user
  belongs_to :quiz
end
