# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  email         :string
#  name          :string
#  password      :string
#  remain_points :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class User < ApplicationRecord
    has_many :point_event_summary
    has_many :point_event
    has_many :user_ticket
    accepts_nested_attributes_for :user_ticket
end
