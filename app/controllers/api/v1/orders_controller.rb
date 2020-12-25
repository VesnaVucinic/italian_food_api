class Api::V1::OrdersController < ApplicationController

    def index 
        orders = @user.orders
        render json: orders
    end

    def show
        order = Order.find(params[:id])
        render json: order
    end


end
