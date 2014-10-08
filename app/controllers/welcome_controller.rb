class WelcomeController < ApplicationController
  def index
    @resorts = Resort.all
    @daily_snowfalls_hash = {}

    @resorts.each {|resort| @daily_snowfalls_hash[resort.name] = resort.determine_daily_snowfall}

    @top_three = Hash[@daily_snowfalls_hash.sort_by{|k,v| v}.reverse].take(3)
  end
end
