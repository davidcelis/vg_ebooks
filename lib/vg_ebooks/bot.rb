require 'twitter'

module VGEbooks
  class Bot
    attr_reader :client

    def initialize(client)
      @client = client
    end
  end
end
