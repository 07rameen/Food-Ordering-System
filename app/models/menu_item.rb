class MenuItem < ApplicationRecord
  belongs_to :menu_category
  has_many :menu_option 
  has_many :menu_addon 
  has_one :deal_menu_item 
  has_many :linked_items, as: :linkeditemable
end
