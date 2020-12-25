class DishSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :description, :price
  has_many :orders
end
 