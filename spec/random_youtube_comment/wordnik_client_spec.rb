require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe RandomYoutubeComment::WordnikClient do
  before(:each) do
    RandomYoutubeComment.setup do |config|
      config.wordnik_api_key = ENV['WORDNIK_API_KEY'] || APP_CONFIG['wordnik_api_key']
    end
  end

  it "returns a word" do
    RandomYoutubeComment::WordnikClient.random_word.class.should == String
  end

  it "returns random words" do
    first_word = RandomYoutubeComment::WordnikClient.random_word
    RandomYoutubeComment::WordnikClient.random_word.should_not equal first_word
  end
end