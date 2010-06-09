require 'things'

class Thingnatra
  class Data

    def initialize(things_data)
      @things = Things.new(:database => things_data)
      @box_map = {
                    :inbox => @things.inbox,
                    :today => @things.today,
                    :next => @things.next,
                    :scheduled => @things.scheduled,
                 }
    end

    def get_items(box)
      items = []
      context = @box_map[box]
      context.map do |t|
        items << {:name => t.to_s}
      end
      items
    end

  end
end
