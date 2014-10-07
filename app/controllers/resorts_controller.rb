class ResortsController < ApplicationController
  before_action :set_resort, only: [:show]

  def index
    @resorts  = Resort.all
  end

  def show
    @snowfall_24 = @resort.determine_daily_snowfall
    @snowfall_3  = @resort.determine_three_day_snowfall
    @snowfall_7  = @resort.determine_seven_day_snowfall
  end

  private

  def set_resort
		@resort = Resort.find(params[:id])
	end
end
