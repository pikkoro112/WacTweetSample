class Tweet < ActiveRecord::Base
	def index
		@tweets = Tweet.all
		@tweet = Tweet.new
	end
end
