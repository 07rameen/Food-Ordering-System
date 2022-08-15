class CreateMenuOrderAddons < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_order_addons do |t|
      t.references :menu_addon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
