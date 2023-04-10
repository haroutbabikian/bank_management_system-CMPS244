class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :transaction_type
      t.date :transaction_date
      t.float :amount
      t.integer :account_id

      t.timestamps
    end
    add_index :transactions, :account_id
  end
end
