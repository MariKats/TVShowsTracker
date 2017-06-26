class User < ApplicationRecord
  has_secure_password
  has_many :user_shows
  has_many :users, through: :user_shows
end
