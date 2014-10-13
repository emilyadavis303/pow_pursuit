class WelcomeController < ApplicationController
  def index
    @top_three = Resort.order(daily_snowfall: :desc).take(3)
  end
end
