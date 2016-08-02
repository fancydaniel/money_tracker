class AddUserToBalance < ActiveRecord::Migration[5.0]
  def change
    add_column :balances, :user_id, :integer
    add_index :balances, :user_id
  end
end
