class TweetsController < ApplicationController
  def new
  end

  def create
    current_user.tweet(twitter_params[:message])
    redirect_to user_path(current_user)
  end

  def twitter_params
    params.require(:tweet).permit(:message)
  end
end
