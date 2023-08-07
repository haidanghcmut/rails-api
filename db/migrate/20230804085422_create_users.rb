class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :remain_points
      t.references :user_tickets, null: false, foreign_key: true
      t.references :point_event, null: false, foreign_key: true
      t.references :point_event_summary, null: false, foreign_key: true
      t.timestamps
    end
  end
end
