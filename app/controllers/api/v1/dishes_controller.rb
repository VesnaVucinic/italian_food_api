class Api::V1::DishesController < ApplicationController
    def index
        dishes = Dish.all
        render json: dishes
    end


private

   def dish_params
    params.require(:dish).permit(:name, :image_url, :description)
   end
end
