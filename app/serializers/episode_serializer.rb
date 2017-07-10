class EpisodeSerializer < ActiveModel::Serializer
  attributes :id, :name, :number, :season_number, :watched, :time
  belongs_to :season
end
