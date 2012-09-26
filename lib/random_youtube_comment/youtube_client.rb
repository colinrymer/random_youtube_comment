require 'youtube_it'

module RandomYoutubeComment
  class YoutubeClient
    class << self
      def get_random_comment(word)
        id = get_video_id(word)
        client.comments(id).sample
      end

      def get_random_video(word)
        video = search_for_videos(word).sample while client.comments(video.unique_id).length < 2
      end

      def search_for_videos(word)
        videos = client.videos_by(query: word).videos while videos.nil? || videos.length < 1
      end

      private

      def client
        @client ||= YouTubeIt::Client.new
      end

      def get_video_id(word)
        videos = client.videos_by(query: word).videos while videos.nil? || videos.length < 1
        id = videos.sample.unique_id while client.comments(id).length < 2
      end
    end
  end
end