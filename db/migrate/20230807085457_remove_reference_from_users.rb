class RemoveReferenceFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_reference :users, :user_ticket, null: false, foreign_key: true
  end
end
