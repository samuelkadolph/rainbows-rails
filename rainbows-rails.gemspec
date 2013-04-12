require File.expand_path("../.gemspec", __FILE__)
require File.expand_path("../lib/rainbows/rails/version", __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "rainbows-rails"
  gem.authors     = ["Samuel Kadolph"]
  gem.email       = ["samuel@kadolph.com"]
  gem.description = readme.description
  gem.summary     = readme.summary
  gem.homepage    = "https://github.com/samuelkadolph/rainbows-rails"
  gem.version     = Rainbows::Rails::VERSION

  gem.files       = Dir["lib/**/*"]

  gem.required_ruby_version = ">= 1.8.7"

  gem.add_dependency "rack"
  gem.add_dependency "rainbows"
end
