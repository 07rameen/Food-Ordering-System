class CreateMenuItems < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.integer :price
      t.string :quantity
      t.references :menu_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
