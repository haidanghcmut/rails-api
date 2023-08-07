class Api::UsersController < ApplicationController
    def index
      
    end
      
    def create
        user = User.new(user_params)
        user.remain_points = 1000
        if user.save
            render json: {message: 'User created successfully', user_id: user.id, point: user.remain_points }, status: :created
        else
            render json: user.errors, status: :unprocessable_entity
        end
    end
    private
        def user_params
            params.require(:user).permit(:name, :email, :password, :password_confirmation)
        end
end
