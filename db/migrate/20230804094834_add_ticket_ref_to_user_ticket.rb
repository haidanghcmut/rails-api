class AddTicketRefToUserTicket < ActiveRecord::Migration[7.0]
  def change
    add_reference :user_tickets, :ticket, null: false, foreign_key: true
  end
end
