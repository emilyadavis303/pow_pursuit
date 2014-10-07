class Resort < ActiveRecord::Base
  def determine_daily_snowfall
    Snotel.hourly(snotel_station.to_sym).last[:change_in_snow_depth_in]
  end

  def determine_three_day_snowfall
    Snotel.hourly(snotel_station.to_sym, 72).last[:change_in_snow_depth_in]
  end

  def determine_seven_day_snowfall
    Snotel.daily(snotel_station.to_sym, 7).last[:change_in_snow_depth_in]
  end
end
