class Api::V1::OrdersController < ApplicationController

    def index 
        orders = @user.orders
        render json: orders
    end

    def show
        order = Order.find(params[:id])
        render json: order
    end

    private

    def set_user
        @user = User.find(params[:user_id])
    end

    def order_params
        params.permit(:user_id, :date, :total, :dishes=>[
            :name,
            :image_url,
            :description
        ])
    end
end
