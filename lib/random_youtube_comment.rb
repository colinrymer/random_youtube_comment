require 'random_youtube_comment/configuration'
require 'random_youtube_comment/comment'

require 'yaml'
APP_CONFIG = YAML.load(File.open("#{File.dirname(__FILE__)}/../config/app_config.yml")) if FileTest.exists?("#{File.dirname(__FILE__)}/../config/app_config.yml")

module RandomYoutubeComment
  class << self
    def comment
      RandomYoutubeComment::Comment.new
    end
  end
end