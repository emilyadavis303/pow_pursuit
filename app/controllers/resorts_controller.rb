class ResortsController < ApplicationController
  before_action :set_resort, only: [:show]

  def index
    if params[:user_id]
      @resorts = current_user.resorts
      render action: 'user_favorites'
    else
      @resorts = Resort.all
    end
  end

  def show
    @resort_lat  = @resort.lat
    @resort_lng  = @resort.lng
  end

  private

  def set_resort
		@resort = Resort.find(params[:id])
	end
end
