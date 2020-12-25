class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :image_url
      t.string :description
      t.float :price

      t.timestamps
    end
  end
end
