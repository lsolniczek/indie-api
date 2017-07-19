class User < ApplicationRecord
  validates :email, uniqueness: true

  has_many :game_keys
end
