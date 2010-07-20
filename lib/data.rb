require 'things'

class Thingnatra
  class Data

    def initialize(things_data)
      self.init_data(things_data)
    end

    def init_data(db_url)
      @things = Things.new(:database => db_url)
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
        items << {:name => t.to_s,
                  :done => t.done?,
                  :parent => (t.parent if t.parent?)
                 }
      end
      items.compact
    end

  end
end
