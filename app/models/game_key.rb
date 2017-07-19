class GameKey < ApplicationRecord
  # relations
  belongs_to :game
  belongs_to :user, optional: true

  # validation
  validates :key, uniqueness: { scope: :game }
  validates :key, presence: true
  validates_associated :game

end
