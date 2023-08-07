class Api::UserTicketController <  ApplicationController
    def create
        user_ticket = UserTicket.new(user_ticket_params)
        user_ticket.time_buy_ticket = Time.now
        ticket_id = user_ticket.ticket_id
        if user_ticket.save
            render json: {message: 'User ticket created successfully', user_ticket_id: user_ticket.id}, status: :created, Time: user_ticket.time_buy_ticket
        else
            render json: user_ticket.errors, status: :unprocessable_entity
        end
    end
    private
        def user_ticket_params
            params.require(:user_ticket).permit(:user_id, :ticket_id, :time_buy_ticket)
        end
end
