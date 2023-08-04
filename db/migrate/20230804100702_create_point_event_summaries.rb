class CreatePointEventSummaries < ActiveRecord::Migration[7.0]
  def change
    create_table :point_event_summaries do |t|
      t.integer :user_id
      t.integer :added_point_total
      t.integer :discount_point_total
      t.integer :used_point_total
      t.datetime :summary_date

      t.timestamps
    end
  end
end
