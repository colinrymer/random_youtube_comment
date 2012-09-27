require 'random_youtube_comment/youtube_client'

module RandomYoutubeComment
  class Comment
    attr_accessor :youtube_it_comment, :id, :author, :body, :title, :video_id, :video

    def initialize
      @video = RandomYoutubeComment::YoutubeClient.random_video
      @video_id = @video.unique_id

      @youtube_it_comment = RandomYoutubeComment::YoutubeClient.random_comment_for_video(@video_id)
      @id, @author = @youtube_it_comment.url.split(":").last, @youtube_it_comment.author.name
      @body, @title =  @youtube_it_comment.content, @youtube_it_comment.title
    end

    
  end
end