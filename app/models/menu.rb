class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :linked_items
end
