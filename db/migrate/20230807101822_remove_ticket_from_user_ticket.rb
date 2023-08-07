class RemoveTicketFromUserTicket < ActiveRecord::Migration[7.0]
  def change
    remove_reference :user_tickets, :ticket, null: false, foreign_key: true
  end
end
