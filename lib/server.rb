require 'rubygems'
require 'sinatra/base'
require 'mustache/sinatra'
require 'lib/data'


class Thingnatra

  class Server < Sinatra::Base
    register Mustache::Sinatra

    base = File.dirname(__FILE__) + "/.."

    set :logging, :true
    set :root, File.dirname(__FILE__)
    set :public, "#{base}/static"
    require base + '/views/layout'

    set :mustache, {
      :views     => "#{base}/views/",
      :templates => "#{base}/templates/",
      :namespace => Thingnatra
    }

    # call super and initialize @data variable
    def initialize(*args)
      super
      @data = Thingnatra::Data.new('Database.xml')
    end

    # index page
    get '/?' do
      mustache :index
    end

    #list of today items
    get '/things/:box/?' do |b|
      @tasks = @data.get_items(b.to_sym)
      mustache :today
    end



  end
end
