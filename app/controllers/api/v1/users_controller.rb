class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by id:params[:id]
        if user
           render json: user, include: ['orders','orders.dishes']
        else 
           render json: {error: 'Error findind account'}
        end
    end

    def user_params
        params.permit(:first_name, :last_name, :password, :email)
      end
end
