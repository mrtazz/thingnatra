require 'lib/data'
require 'lib/exceptions'
require 'test/test'

class Thingnatra
  module Tests
    class IndexTest < Test::Unit::TestCase

      def setup
        @data = Thingnatra::Data.new('Database.xml')
      end

      def test_data_is_things_document
        assert(@data.class, Thingnatra::Data)
      end

      def test_raise_for_nonexisting_db
        assert_raise Thingnatra::Exceptions::DatabaseFileError do
          Thingnatra::Data.new('foo')
        end
      end

    end
  end
end
