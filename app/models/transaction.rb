class Transaction < ApplicationRecord
  
  # relations
  has_many :game_keys
  belongs_to :user

end
