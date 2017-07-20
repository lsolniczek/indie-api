class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.string :transaction_id
      t.belongs_to :user
      t.timestamps
    end
  end
end
