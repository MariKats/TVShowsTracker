class EpisodeSerializer < ActiveModel::Serializer
  attributes :id, :name, :number, :season_number, :watched
  belongs_to :season
end
