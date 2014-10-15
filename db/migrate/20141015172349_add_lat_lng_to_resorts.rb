class AddLatLngToResorts < ActiveRecord::Migration
  def change
    add_column :resorts, :lat, :integer
    add_column :resorts, :lng, :integer
  end
end
