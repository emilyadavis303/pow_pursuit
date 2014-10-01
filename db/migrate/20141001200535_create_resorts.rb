class CreateResorts < ActiveRecord::Migration
  def change
    create_table :resorts do |t|
      t.string :name
      t.string :snotel_station

      t.timestamps
    end
  end
end
