class ResortsController < ApplicationController
  before_action :set_resort, only: [:show]

  def index
    @resorts = Resort.all
  end

  def show

  end

  private

  def set_resort
			@resort= Resort.find(params[:id])
	end
end
