$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'
require 'random_youtube_comment'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  
end

RandomYoutubeComment.setup do |config|
  config.wordnik_api_key = ENV['WORDNIK_API_KEY'] || APP_CONFIG['wordnik_api_key']
end
