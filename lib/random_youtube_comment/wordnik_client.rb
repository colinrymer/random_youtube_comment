require 'wordnik'

module RandomYoutubeComment
  class WordnikClient
    class << self
      def random_word
        client.get_random_word(:hasDictionaryDef => 'true')["word"]
      end

      def client
        Wordnik.configure do |config|
          config.api_key = RandomYoutubeComment.configuration.wordnik_api_key
          config.logger = Logger.new('/dev/null')
        end unless @client

        @client ||= Wordnik.words
      end
    end
  end
end