class Thingnatra
  module Views
    class Layout < Mustache

      def title
        @title || "Thingnatra -- Webfrontend for Things.app data"
      end

      def heading
        @heading || "Thingnatra"
      end

    end
  end
end
