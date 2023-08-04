class Api::UsersController < ApplicationController
    def create_with_points
        user = User.new(user_params)
        if user.save
            user.point_events.create(event_type: 'add_point', points: 1000)
            render json: user, status: :created
        else
            render json: user.errors, status: :unprocessable_entity
        end
    end

    private
        def user_params
            params.require(:user).permit(:name, :email, :password)
        end
end
