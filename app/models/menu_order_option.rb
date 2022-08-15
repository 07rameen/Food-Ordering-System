class MenuOrderOption < ApplicationRecord
  belongs_to :menu_option
  has_many :order_items, as: :orderitemable 
end
