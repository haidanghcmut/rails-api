# == Schema Information
#
# Table name: tickets
#
#  id          :integer          not null, primary key
#  description :string
#  points      :integer
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Ticket < ApplicationRecord
    has_one :user_ticket
end
