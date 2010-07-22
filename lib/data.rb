require 'things'

class Thingnatra
  class Data

    def initialize(things_data)
      self.init_data(things_data)
    end

    def init_data(db_url)
      if File.exists? db_url
        @things = Things.new(:database => db_url)
      end
      if @things
        @box_map = {
                      :inbox => @things.inbox,
                      :today => @things.today,
                      :next => @things.next,
                      :scheduled => @things.scheduled,
                  }
      end
    end

    def get_items(box)
      @box_map[box]
    end

  end
end
