class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.decimal :balance, default: 0
      t.string :name
      t.integer :user_id

      t.timestamps
    end
    add_index :accounts, :name
    add_index :accounts, :user_id
  end
end
