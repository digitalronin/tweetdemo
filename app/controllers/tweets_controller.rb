class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to tweets_url, notice: 'Tweet was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:body)
  end
end
