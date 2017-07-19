class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :subtitle
      t.text :description
      t.money :original_price
      t.money :sale_price
      t.float :sale_percentage
      t.date :release_date
      t.integer :time # in hours

      # enums
      t.integer :players # single/multi
      t.integer :platform # steam
      t.integer :os # win/mac/win-mac

      t.timestamps
    end
  end
end
