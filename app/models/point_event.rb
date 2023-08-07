# == Schema Information
#
# Table name: point_events
#
#  id               :integer          not null, primary key
#  even_type        :integer
#  point_event_date :datetime
#  points           :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer
#
class PointEvent < ApplicationRecord
    belongs_to :user
end
