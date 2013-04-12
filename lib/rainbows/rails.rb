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
          rainbows_options = {}
          rainbows_options[:listeners] = ["#{options[:Host]}:#{options[:Port]}"]
          rainbows_options[:worker_processes] = (ENV["RAINBOWS_WORKERS"] || "1").to_i
          rainbows_options[:timeout] = 31 * 24 * 60 * 60

          ::Rainbows::Launcher.daemonize!(rainbows_options) if options[:daemonize]
          ::Rainbows::HttpServer.new(app, rainbows_options).start.join
        end
      end
    end

    register "rainbows", "Rack::Handler::Rainbows"

    def self.default(options = {})
      Rack::Handler::Rainbows
    end
  end
end
