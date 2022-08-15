class MenuOrderAddon < ApplicationRecord
  belongs_to :menu_addon
  has_many :order_items, as: :orderitemable
end
