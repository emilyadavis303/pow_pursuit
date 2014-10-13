class AddSevenDaySnowfallToResorts < ActiveRecord::Migration
  def change
    add_column :resorts, :seven_day_snowfall, :integer, default: 0, null: false
  end
end
