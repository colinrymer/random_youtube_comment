require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe RandomYoutubeComment::YoutubeClient do
  before(:each) do
    @video = RandomYoutubeComment::YoutubeClient.random_video
  end

  it "returns random videos" do
    RandomYoutubeComment::YoutubeClient.random_video.should_not == @video
  end

  it "gets a video that has comments" do
    @video.comment_count.should >= 2
  end

  it "gets a random comment from a video" do
    comment = RandomYoutubeComment::YoutubeClient.random_comment_for_video(@video.unique_id)
    comment.class.should == YouTubeIt::Model::Comment
  end
end