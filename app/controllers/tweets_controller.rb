class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def show

  end

  def new

  end

  def create
    $client.update(tweet_params[:tweet_body])
    redirect_to new_tweet_path
  end

private

  def tweet_params
    params.permit(:tweet_body)
  end

end