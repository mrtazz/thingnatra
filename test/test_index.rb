require 'lib/server'
require 'test/test'

ENV['RACK_ENV'] = 'test'

class Thingnatra
  module Tests
    class IndexTest < Test::Unit::TestCase

      def app
        Thingnatra::Server
      end

      def test_index_page
        get '/'
        assert last_response.ok?
        assert last_response.body.include?('Today')
      end

    end
  end
end
