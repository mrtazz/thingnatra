#!/usr/bin/env ruby

require 'rubygems'
$:.unshift(File.dirname(__FILE__) + "/../lib/")
require 'server'

Thingnatra::Server.run!
