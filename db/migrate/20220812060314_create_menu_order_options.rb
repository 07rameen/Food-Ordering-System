class CreateMenuOrderOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_order_options do |t|
      t.references :menu_options, null: false, foreign_key: true

      t.timestamps
    end
  end
end
