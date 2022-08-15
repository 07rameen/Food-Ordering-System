class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :menu_item
  belongs_to :orderitemable, polymorphic: true
end
