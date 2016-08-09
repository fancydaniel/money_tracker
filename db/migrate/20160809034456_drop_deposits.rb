class DropDeposits < ActiveRecord::Migration[5.0]
  def change
    drop_table :deposits
  end
end
