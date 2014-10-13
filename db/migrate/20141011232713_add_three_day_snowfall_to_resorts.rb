class AddThreeDaySnowfallToResorts < ActiveRecord::Migration
  def change
    add_column :resorts, :three_day_snowfall, :integer, default: 0, null: false
  end
end
