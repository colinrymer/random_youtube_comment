require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe RandomYoutubeComment do
  before(:each) do

    RandomYoutubeComment.setup do |config|
      config.wordnik_api_key = ENV['WORDNIK_API_KEY'] || APP_CONFIG['wordnik_api_key']
    end

  end
  it "returns a random comment" do
    RandomYoutubeComment.comment.class.should == YouTubeIt::Model::Comment
  end
end
