class Thingnatra
  module Views
    class Layout < Mustache

      def title
        @title || "Thingnatra -- Webfrontend for Things.app data"
      end

    end
  end
end
