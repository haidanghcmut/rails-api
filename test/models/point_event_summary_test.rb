# == Schema Information
#
# Table name: point_event_summaries
#
#  id                   :integer          not null, primary key
#  added_point_total    :integer
#  discount_point_total :integer
#  summary_date         :datetime
#  used_point_total     :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  user_id              :integer
#
require "test_helper"

class PointEventSummaryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
