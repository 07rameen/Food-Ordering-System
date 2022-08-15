class Restaurant < ApplicationRecord
    belongs_to :admin_user 
    has_one :menu
    has_many :employee
    has_many :order 

    scope :closedstatus, -> {
        where(:status => "Closed")
      }
end
