# == Schema Information
#
# Table name: tickets
#
#  id              :integer          not null, primary key
#  description     :string
#  points          :integer
#  title           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_tickets_id :integer          not null
#
# Indexes
#
#  index_tickets_on_user_tickets_id  (user_tickets_id)
#
# Foreign Keys
#
#  user_tickets_id  (user_tickets_id => user_tickets.id)
#
class Ticket < ApplicationRecord
    has_one :user_ticket
end
