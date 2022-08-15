class AddMenuOrderOptionToMenuOption < ActiveRecord::Migration[6.1]
  def change
    add_reference :menu_options, :menu_order_option, null: false, foreign_key: true
  end
end
