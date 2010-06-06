require 'things'

class Thingnatra
  class Data

    def initialize(things_data)
      @things = Things.new(:database => things_data)
    end

    def get_todays_items
      items = []
      @things.today.map do |t|
        items << {:name => t.to_s}
      end
      items
    end
  end
end
