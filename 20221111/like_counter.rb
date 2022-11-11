require 'open-uri'
require 'json'

class FbShareCounter
    BASE_URL = 'http://graph.facebook.com/?id='

    def initialize(target_url)
        # ↓こっちの書き方の方がいい
        @request_url = "#{BASE_URL}#{target_url}"
        # @request_url = BASE_URL + target_url
    end

    def count
        response = open(@request_url).read
        hash = JSON.parse(reponse)
        hash['share']['share_count']
    end
end

counter = FbShareCounter.new('http://gihyo.jp')

p counter.count