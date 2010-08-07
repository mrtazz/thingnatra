require 'rubygems'
require 'things'
require 'exceptions'

class Thingnatra
  class Data

    def initialize(things_data)
        self.init_data(things_data)
    end

    def init_data(db_url)
      if File.exists? db_url
        @things = Things.new(:database => db_url)
        @box_map = {
                      :inbox => @things.inbox,
                      :today => @things.today,
                      :next => @things.next,
                      :scheduled => @things.scheduled,
                      :logbook => @things.logbook,
                  }
      else
        raise Thingnatra::Exceptions::DatabaseFileError
      end
    end

    def get_items_for(box)
      @box_map[box]
    end

    def get_things_url
      @things.database_file
    end

    def set_things_url(url)
      self.init_data(url)
    end

  end
end
