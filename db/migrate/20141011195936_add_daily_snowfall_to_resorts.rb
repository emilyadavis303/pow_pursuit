class AddDailySnowfallToResorts < ActiveRecord::Migration
  def change
    add_column :resorts, :daily_snowfall, :integer, default: 0, null: false
  end
end
