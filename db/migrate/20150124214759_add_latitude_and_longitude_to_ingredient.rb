class AddLatitudeAndLongitudeToIngredient < ActiveRecord::Migration
  def change
    add_column :ingredients, :from_latitude, :float
    add_column :ingredients, :from_longitude, :float

    add_column :ingredients, :to_latitude, :float
    add_column :ingredients, :to_longitude, :float
  end
end
