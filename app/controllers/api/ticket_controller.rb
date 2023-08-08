class Api::TicketController < ApplicationController
    def index
        tickets = Ticket.all
        render json: tickets, status: :ok
    end
    
    def create
        ticket = Ticket.new(ticket_params)
        if ticket.save
            render json: {message: 'Ticket created successfully'}, status: :created
        else
            render json: ticket.errors, status: :unprocessable_entity
        end
    end
    private
        def ticket_params
            params.require(:ticket).permit(:points, :title, :description, :user_tickets_id)
        end
end
