class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.integer :account_number
      t.string :account_type
      t.float :balance
      t.integer :customer_id

      t.timestamps
    end
    add_index :accounts, :account_number
    add_index :accounts, :customer_id
  end
end
