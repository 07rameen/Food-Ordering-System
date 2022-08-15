class MenuOption < ApplicationRecord
  belongs_to :menu_item
  has_many :menu_order_option
end
