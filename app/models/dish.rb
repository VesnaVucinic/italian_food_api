class Dish < ApplicationRecord
    has_many :order_dishes
    has_many :orders, through: :oredr_dishes
end
