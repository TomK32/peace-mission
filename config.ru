#!/usr/bin/env ruby

require 'bundler'
Bundler.require(:default)

use Rack::Static, :urls => { "/" => "index.html" }, :root => 'public'

map '/' do
  run Rack::URLMap.new
end


require 'ejs'
project_root = File.expand_path(File.dirname(__FILE__))
assets = Sprockets::Environment.new(project_root) do |env|
  env.cache = false
  env.logger = Logger.new(STDOUT)
end

assets.append_path 'game/javascripts'
assets.append_path 'game/stylesheets'
assets.append_path 'lib/javascripts'

map '/assets' do
  run assets
end
