class AddPointEventSummaryToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :point_event_summary, null: false, foreign_key: true
  end
end
