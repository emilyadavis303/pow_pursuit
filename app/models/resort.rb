class Resort < ActiveRecord::Base
  def determine_daily_snowfall
    snowfall_daily = Snotel.hourly(snotel_station.to_sym).last[:change_in_snow_depth_in]

    if snowfall_daily.nil?
      snowfall_daily = 0
    end

    return snowfall_daily.to_i
  end

  def determine_three_day_snowfall
    snowfall_three = Snotel.hourly(snotel_station.to_sym, 72).last[:change_in_snow_depth_in]

    if snowfall_three.nil?
      snowfall_three = "0"
    end

    return snowfall_three
  end

  def determine_seven_day_snowfall
    snowfall_seven = Snotel.daily(snotel_station.to_sym, 7).last[:change_in_snow_depth_in]

    if snowfall_seven.nil?
      snowfall_seven = "0"
    end

    return snowfall_seven
  end
end
