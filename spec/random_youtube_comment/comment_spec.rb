require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe RandomYoutubeComment::Comment do
  before(:each) do
    @comment = RandomYoutubeComment::Comment.new
  end

  it "returns a random comment" do
   @comment.youtube_it_comment.class.should == YouTubeIt::Model::Comment
  end

  it "has a video" do
   @comment.video.class.should == YouTubeIt::Model::Video
  end

  it "is random" do
   RandomYoutubeComment::Comment.new.id.should_not == @comment.id
  end
end