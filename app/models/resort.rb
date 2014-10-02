class Resort < ActiveRecord::Base
  def determine_daily_snowfall
    Snotel.daily(snotel_station.to_sym).last[:change_in_snow_depth_in]
  end
end
