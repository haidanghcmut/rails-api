class Api::UsersController < ApplicationController
    def index
        users = User.all
        render json: users, status: :ok
    end
    
    def create
        user = User.find_by(email: user_params[:email])
        user.remain_points = 1000
        if user.save
            render json: {message: 'User created successfully', user_id: user.id, point: user.remain_points }, status: :created
        else
            render json: user.errors, status: :unprocessable_entity
        end
    end

    def login
        user = User.find_by(email: user_params[:email])
        if user
            render json: {message: 'Login successfully', name: user.name, email: user.email , point: user.remain_points }, status: :ok
        else
            render json: {message: 'Login failed'}, status: :unprocessable_entity
        end
    end
    private
        def user_params
            params.require(:user).permit(:name, :email, :password, :password_confirmation)
        end
end
