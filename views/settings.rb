class Thingnatra
  module Views
    class Settings < Layout
      def things_text
        @foo || "Things DB Path"
      end
    end
  end
end
