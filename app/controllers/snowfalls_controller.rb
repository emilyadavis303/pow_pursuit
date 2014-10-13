class SnowfallsController < ApplicationController
  def index
    @resorts = Resort.order(daily_snowfall: :desc)
  end
end
