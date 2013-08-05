# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Follow::Application.initialize!

# env_config = YAML.load_file(APP_ROOT.join('config', 'load_github_keys.yml'))

# env_config.each do |key, value|
#   ENV[key] = value
# end

# Twitter.configure do |config|
#   config.consumer_key = ENV['TWITTER_KEY']
#   config.consumer_secret = ENV['TWITTER_SECRET']
  # config.oauth_token = ENV['OAUTH_TOKEN']
  # config.oauth_token_secret = ENV['OAUTH_TOKEN_SECRET']
# end