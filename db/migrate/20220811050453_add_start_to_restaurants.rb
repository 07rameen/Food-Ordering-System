class AddStartToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :startTime, :string
  end
end
