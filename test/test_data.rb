require 'lib/data'
require 'lib/exceptions'
require 'test/test'

class Thingnatra
  module Tests
    class IndexTest < Test::Unit::TestCase

      def setup
        @data = Thingnatra::Data.new('test/Database.xml')
      end

      def test_data_is_things_document
        assert(@data.class, Thingnatra::Data)
      end

      def test_raise_for_nonexisting_db
        assert_raise Thingnatra::Exceptions::DatabaseFileError do
          Thingnatra::Data.new('foo')
        end
      end

      def test_raise_for_nonexisting_db_on_set
        assert_raise Thingnatra::Exceptions::DatabaseFileError do
          t = Thingnatra::Data.new('test/Database.xml')
          t.set_things_url('foo')
        end
      end

      def test_get_db_url
        t = Thingnatra::Data.new('test/Database.xml')
        assert(t.get_things_url, 'test/Database.xml')
      end


    end
  end
end
