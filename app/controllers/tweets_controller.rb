class TweetsController < ApplicationController
  def index
    @tweets = Tweets.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user = current_user
    if @tweet.save
      redirect_to tweets_path
    else
      render 'new'
    end
  end

private

 def tweet_params
   params.require(:tweet).permit(:content)
 end
end
