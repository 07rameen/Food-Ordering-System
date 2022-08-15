class CreateMenuAddons < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_addons do |t|
      t.string :name
      t.integer :price
      t.references :menu_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
