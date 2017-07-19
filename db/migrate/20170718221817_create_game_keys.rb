class CreateGameKeys < ActiveRecord::Migration[5.1]
  def change
    create_table :game_keys do |t|
      t.string :key
      t.belongs_to :game
      t.belongs_to :user
      t.timestamps
    end
  end
end
