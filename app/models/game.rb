class Game < ApplicationRecord
  enum players: { single: 0, multi: 1 }
  enum platform: { steam: 0 }
  enum os: { win: 0, mac: 1, mac_win: 2 }

  # relations
  has_many :game_keys

  # validation
  validates :title, :description, :original_price, :sale_price, :sale_percentage, :release_date, :time, :players, :platform, :os, presence: true
end
