class DealMenuItem < ApplicationRecord
  belongs_to :deal
  belongs_to :menu_item
end
