class Deal < ApplicationRecord
    has_one :deal_menu_item 
    has_many :linked_items, as: :linkeditemable
    has_many :discount, as: :discountable
end
