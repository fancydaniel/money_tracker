class DropBalances < ActiveRecord::Migration[5.0]
  def change
    drop_table :balances
  end
end
