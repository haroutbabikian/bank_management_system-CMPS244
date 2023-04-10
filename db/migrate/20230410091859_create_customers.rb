class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.integer :customer_id

      t.timestamps
    end
    add_index :customers, :customer_id
  end
end
