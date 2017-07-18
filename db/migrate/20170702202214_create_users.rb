class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :uuid
      t.integer :version
      t.timestamps

    end
    add_index :users, [:email, :uuid]
  end
end
