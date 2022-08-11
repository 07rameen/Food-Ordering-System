class AddEndToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :EndTime, :string
  end
end
