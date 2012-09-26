module RandomYoutubeComment
  class Configuration
    attr_accessor :wordnik_api_key
  end

  class << self
    attr_accessor :configuration

    def setup
      self.configuration ||= Configuration.new
      yield configuration
    end
  end
  
end