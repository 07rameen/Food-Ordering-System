class MenuAddon < ApplicationRecord
  belongs_to :menu_item
  has_many :menu_order_addon 
end
