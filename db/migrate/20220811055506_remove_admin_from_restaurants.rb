class RemoveAdminFromRestaurants < ActiveRecord::Migration[6.1]
  def change
    remove_column :restaurants, :admin_id, :integer
  end
end
