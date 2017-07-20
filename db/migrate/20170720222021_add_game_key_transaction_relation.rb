class AddGameKeyTransactionRelation < ActiveRecord::Migration[5.1]
  def change
    change_table :game_keys do |t|
      t.belongs_to :transaction
    end
  end
end
