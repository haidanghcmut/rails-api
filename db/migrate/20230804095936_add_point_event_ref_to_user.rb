class AddPointEventRefToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :point_event, null: false, foreign_key: true
  end
end
