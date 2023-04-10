class CreateLoans < ActiveRecord::Migration[7.0]
  def change
    create_table :loans do |t|
      t.integer :loan_id
      t.string :loan_type
      t.float :amount
      t.float :interest_rate
      t.integer :customer_id

      t.timestamps
    end
    add_index :loans, :loan_id
    add_index :loans, :customer_id
  end
end
