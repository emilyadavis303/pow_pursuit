class SnowfallsController < ApplicationController
  def index
    @resorts = Resort.all
    @daily_snowfalls_hash = {}

    @resorts.each {|resort| @daily_snowfalls_hash[resort.name] = resort.determine_daily_snowfall}

    @daily_snowfalls_hash = Hash[@daily_snowfalls_hash.sort_by{|k,v| v}.reverse]
  end
end
