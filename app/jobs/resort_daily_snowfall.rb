class ResortDailySnowfall
  @queue = :determine_daily_snowfall

  def self.perform
    DataCache.set 'resort_daily_snowfall', Resort.determine_daily_snowfall
  end
end
