class SeasonSerializer < ActiveModel::Serializer
  attributes :id, :number, :number_of_episodes
  belongs_to :show
  has_many :episodes
end
