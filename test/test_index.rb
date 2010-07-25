require 'lib/server'
require 'test/test'

ENV['RACK_ENV'] = 'test'

class Thingnatra
  module Tests
    class IndexTest < Test::Unit::TestCase

      def app
        Thingnatra::Server
      end

      def test_index_page_redirect
        get '/'
        follow_redirect!

        assert_equal "http://example.org/things/today", last_request.url
        assert last_response.ok?
      end

    end
  end
end
