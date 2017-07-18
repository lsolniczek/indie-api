class Game < ApplicationRecord
  enum players: { single: 0, multi: 1 }
  enum platform: { steam: 0 }
  enum os: { win: 0, mac: 1, mac_win: 2 }
end
