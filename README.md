[![Gem Version](https://badge.fury.io/rb/rainbows-rails.png)](http://badge.fury.io/rb/rainbows-rails)
[![Dependency Status](https://gemnasium.com/samuelkadolph/rainbows-rails.png)](https://gemnasium.com/samuelkadolph/rainbows-rails)
[![Code Climate](https://codeclimate.com/github/samuelkadolph/rainbows-rails.png)](https://codeclimate.com/github/samuelkadolph/rainbows-rails)

# rainbows-rails

rainbows-rails is a simple gem that sets the default server for rack (and rails) to [rainbows](http://rainbows.rubyforge.org/).

## Description

rainbows-rails overrides the `Rack::Handler.default` method to return `Rack::Handler::Rainbows` which will cause rack (and rails) to use rainbows by default.

## Installation

Add this line to your application's `Gemfile`:

    gem "rainbows-rails"

And then execute:

    $ bundle install

## Usage

Just add the gem to your `Gemfile` and then `rails server` will default to using rainbows.

## Contributing

Fork, branch & pull request.
