class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
#jnwvqevqiveljvlh
  protect_from_forgery with: :exception
  before_action :authenticate_user!
require 'twitter' 

  def load_tweets
    @tweets = Twitter.user_timeline[0..4] # For this demonstration lets keep the tweets limited to the first 5 available.
#raise @tweets.inspect  
end
end
