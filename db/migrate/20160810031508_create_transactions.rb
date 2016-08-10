class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.string :name
      t.float :amount
      t.string :type

      t.timestamps
    end
  end
end
