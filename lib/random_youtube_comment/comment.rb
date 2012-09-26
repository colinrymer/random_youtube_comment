require 'random_youtube_comment/wordnik_client'
require 'random_youtube_comment/youtube_client'

module RandomYoutubeComment
  class Comment
    attr_accessor :comment, :id, :author, :body, :title, :video_id

    def initialize
      random_word = RandomYoutubeComment::WordnikClient.random_word
      video = RandomYoutubeComment::YoutubeClient.get_random_video(word)
      comment = RandomYoutubeComment::YoutubeClient.get_random_comment(video.unique_id)
      
      @comment = video.random_comment
      @id, @author = @comment.url.split(":").last, @comment.author.name
      @body, @title =  @comment.content, @comment.title
      @video_id = video.unique_id
    end

    
  end
end