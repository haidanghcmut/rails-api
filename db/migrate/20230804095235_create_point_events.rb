class CreatePointEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :point_events do |t|
      t.integer :user_id
      t.integer :even_type
      t.integer :points
      t.datetime :point_event_date

      t.timestamps
    end
  end
end
