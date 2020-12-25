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
           render json: {error: 'Error finding account'}
        end
    end

    def create
        user = User.new(user_params)
        if user.save
            payload = {user_id: user.id}
            token = encode_token(payload)
            render json: {
                :user => user.to_json(:include => [
                    :orders=>{:include=> :dishes}]),
                :jwt => token
            }
        else
            render json: {error: 'Error creating account'}
        end
    end 

    def user_params
        params.permit(:first_name, :last_name, :password, :email)
    end
end
