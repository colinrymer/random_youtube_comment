require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe RandomYoutubeComment do
  it "returns a random comment" do
    RandomYoutubeComment.comment.class.should == RandomYoutubeComment::Comment
  end
end
