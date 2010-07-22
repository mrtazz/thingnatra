class Thingnatra
  module Views
    class Settings < Layout
      def things_text
        @foo || "Things DB Path"
      end

      def things_url
        @things_db || ""
      end
    end
  end
end
