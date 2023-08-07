# == Schema Information
#
# Table name: user_tickets
#
#  id              :integer          not null, primary key
#  time_buy_ticket :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#
class UserTicket < ApplicationRecord
    belongs_to :user
    has_one :ticket
end
