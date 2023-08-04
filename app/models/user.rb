class User < ApplicationRecord
    has_many :point_event_summary
    has_many :point_event
    has_many :user_ticket
end
