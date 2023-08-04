class AddUserTicketRefToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :user_ticket, null: false, foreign_key: true
  end
end
