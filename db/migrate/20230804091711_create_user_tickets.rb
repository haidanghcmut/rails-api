class CreateUserTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :user_tickets do |t|
      t.integer :user_id
      t.datetime :time_buy_ticket
      t.references :tickets, null: false, foreign_key: true
      t.timestamps
    end
  end
end
