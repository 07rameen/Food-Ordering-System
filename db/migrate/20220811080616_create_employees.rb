class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :email
      t.string :phoneNo
      t.references :restaurant, null: false, foreign_key: { to_table: :employees }

      t.timestamps
    end
  end
end
