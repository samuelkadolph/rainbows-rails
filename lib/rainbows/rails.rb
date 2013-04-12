require "rainbows"

module Rainbows
  module Rails
    require "rainbows/rails/version"
  end
end

module Rack
  module Handler
    class Rainbows
      class << self
        def run(app, options = {})
          options = {}
          options[:listeners] = ["#{options[:Host]}:#{options[:Port]}"]
          options[:worker_processes] = (ENV["RAINBOWS_WORKERS"] || "1").to_i
          options[:timeout] = 31 * 24 * 60 * 60

          ::Rainbows::Launcher.daemonize!(options) if options[:daemonize]
          ::Rainbows::HttpServer.new(app, options).start.join
        end
      end
    end

    register "rainbows", "Rack::Handler::Rainbows"

    def self.default(options = {})
      Rack::Handler::Rainbows
    end
  end
end
