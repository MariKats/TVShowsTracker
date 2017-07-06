class ShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :tvmaze_id
  has_many :seasons
  has_many :episodes, through: :seasons
end
