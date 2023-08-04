class UserTicket < ApplicationRecord
    belongs_to :user
    has_one :ticket
end
