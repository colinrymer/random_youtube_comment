require 'random_youtube_comment/wordnik_client'

require 'youtube_it'

module RandomYoutubeComment
  class YoutubeClient
    class << self
      def random_comment_for_video(video_id)
        client.comments(video_id).sample
      end

      def random_video
        begin
          video = search_for_videos.sample
        end while video.nil? || video.comment_count < 2
        video
      end

      private

      def client
        @client ||= YouTubeIt::Client.new
      end

      def search_for_videos
        begin
          word = RandomYoutubeComment::WordnikClient.random_word
          videos = client.videos_by(query: word).videos
        end while videos.nil? || videos.length < 1
        videos
      end

    end
  end
end