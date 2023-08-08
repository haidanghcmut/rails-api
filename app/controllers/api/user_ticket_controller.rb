class Api::UserTicketController <  ApplicationController
    def index
        user_tickets = UserTicket.all
        render json: user_tickets, status: :ok
    end

    def create
        user_ticket = UserTicket.new(user_ticket_params)
        user_ticket.time_buy_ticket = Time.now
        if user_ticket.save
            render json: {message: 'User ticket created successfully'}, status: :created, Time: user_ticket.time_buy_ticket
        else
            render json: user_ticket.errors, status: :unprocessable_entity
        end
    end
    
    private
        def user_ticket_params
            params.require(:user_ticket).permit(:user_id, :time_buy_ticket)
        end
end
