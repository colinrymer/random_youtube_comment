require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe RandomYoutubeComment::WordnikClient do
  it "returns a word" do
    RandomYoutubeComment::WordnikClient.random_word.class.should == String
  end

  it "returns random words" do
    first_word = RandomYoutubeComment::WordnikClient.random_word
    RandomYoutubeComment::WordnikClient.random_word.should_not equal first_word
  end
end