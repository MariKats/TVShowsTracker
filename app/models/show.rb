class Show < ApplicationRecord
  has_many :seasons
  has_many :user_shows
  has_many :users, through: :user_shows
  accepts_nested_attributes_for :seasons
end
