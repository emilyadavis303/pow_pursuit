class RemoveLatLongFromResorts < ActiveRecord::Migration
  def change
    remove_column :resorts, :lat
    remove_column :resorts, :lng
  end
end
