class LevelSerializer < ActiveModel::Serializer
  attributes :id, :level_number

  has_many :exercises
  has_one :quiz
end
