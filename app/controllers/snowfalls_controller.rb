class SnowfallsController < ApplicationController
  def index
    @resorts = Resort.all
  end
end
