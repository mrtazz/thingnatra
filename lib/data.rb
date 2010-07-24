require 'things'

class Thingnatra
  class Data

    def initialize(things_data)
      if File.exists? things_data
        @things_data = things_data
        self.init_data(things_data)
      else
        None
      end
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

    def get_items_for(box)
      @box_map[box]
    end

    def get_things_url
      @things_data
    end

  end
end
