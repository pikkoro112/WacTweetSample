class Tweet < ActiveRecord::Base

	def index
		@tweets = Tweet.all
		@tweet = Tweet.new
	end

	def create
		@tweet = Tweet.new(tweet_params)
		@tweet.save
		redirect_to tweets_path
	end

	private

	def tweet_params
		params.require.(:tweet).permit(:body)
	end

end
