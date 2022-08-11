class AddStatusToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :status, :string
  end
end
