class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :phoneNo
      t.integer :rating
      t.integer :cutPercent
      t.string :location
      t.integer :postalCode
      t.integer :admin_id 

      t.timestamps
    end
  end
end
