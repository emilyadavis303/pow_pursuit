class AddLatitudeLongitudeToResorts < ActiveRecord::Migration
  def change
    add_column :resorts, :lat, :float
    add_column :resorts, :lng, :float
  end
end
