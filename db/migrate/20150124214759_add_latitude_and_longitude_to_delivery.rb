class AddLatitudeAndLongitudeToDelivery < ActiveRecord::Migration
  def change
    add_column :deliveries, :from_latitude, :float
    add_column :deliveries, :from_longitude, :float

    add_column :deliveries, :to_latitude, :float
    add_column :deliveries, :to_longitude, :float
  end
end
