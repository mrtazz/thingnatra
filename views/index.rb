class Thingnatra
  module Views
    class Index < Layout
      def foo
        @foo || "bla"
      end
    end
  end
end
