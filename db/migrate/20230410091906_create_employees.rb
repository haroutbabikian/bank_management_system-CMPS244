class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.string :job_title

      t.timestamps
    end
    add_index :employees, :name
  end
end
