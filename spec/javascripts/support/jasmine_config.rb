require 'bundler'
Bundler.require(:default)
module Jasmine
  class Config

    alias_method :old_js_files, :js_files

    def js_files(spec_filter = nil)
      # Convert all .coffee files into .js files before putting them in a script tag
      old_js_files(spec_filter).map do |filename|
        puts filename 
        filename.sub(/\.coffee/, '')
      end
    end


    def start_server(port=8888)
      # We can't access the RAILS_ROOT constant from here
      root = File.expand_path(File.join(File.dirname(__FILE__), '../../..'))

      config = self

      app = Rack::Builder.new do
        assets = Sprockets::Environment.new(root) do |env|
          env.cache = false
          env.logger = Logger.new(STDOUT)

          env.append_path 'game/javascripts'
          env.append_path 'lib/javascripts'
          env.append_path 'spec/javascripts'
        end
        puts assets.inspect
        map(config.spec_path) { run assets }
        map('/javascripts') { run assets }
        map '/' do
          run Jasmine.app(config)
        end
      end

      server = Rack::Server.start(:app => app, :Port => port, :AccessLog => [])
    end
  end
end
