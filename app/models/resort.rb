class Resort < ActiveRecord::Base
  has_many :favorites
  has_many :users, :through => :favorites
  
  def determine_daily_snowfall
    snowfall_daily = Snotel.hourly(snotel_station.to_sym).last[:change_in_snow_depth_in]
    update_attributes!(daily_snowfall: snowfall_daily.to_i)
  end

  def determine_three_day_snowfall
    snowfall_three = Snotel.hourly(snotel_station.to_sym, 72).last[:change_in_snow_depth_in]
    update_attributes!(three_day_snowfall: snowfall_three.to_i)
  end

  def determine_seven_day_snowfall
    snowfall_seven = Snotel.daily(snotel_station.to_sym, 7).last[:change_in_snow_depth_in]
    update_attributes!(seven_day_snowfall: snowfall_seven.to_i)
  end
end
