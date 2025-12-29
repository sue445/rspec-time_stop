# RSpec::TimeStop
Stop current time in example.

This is a shorthand of `ActiveSupport::Testing::TimeHelpers`

[![Gem Version](https://badge.fury.io/rb/rspec-time_stop.svg)](https://badge.fury.io/rb/rspec-time_stop)
[![test](https://github.com/sue445/rspec-time_stop/actions/workflows/test.yml/badge.svg)](https://github.com/sue445/rspec-time_stop/actions/workflows/test.yml)
[![Coverage Status](https://coveralls.io/repos/github/sue445/rspec-time_stop/badge.svg)](https://coveralls.io/github/sue445/rspec-time_stop)
[![Maintainability](https://qlty.sh/gh/sue445/projects/rspec-time_stop/maintainability.svg)](https://qlty.sh/gh/sue445/projects/rspec-time_stop)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec-time_stop'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-time_stop

## Usage

Add `:time_stop` to `it`, `describe` or `context`

## Example
```ruby
RSpec.describe RSpec::TimeStop do
  context "with :time_stop", :time_stop do
    it "current time is frozen" do
      before_time = Time.now
      sleep 1
      after_time = Time.now

      expect(after_time).to eq before_time
    end
  end

  context "without :time_stop" do
    it "current time is not frozen" do
      before_time = Time.now
      sleep 1
      after_time = Time.now

      expect(after_time).to be > before_time
    end

    it "current time is frozen when :time_stop is granted", :time_stop do
      before_time = Time.now
      sleep 1
      after_time = Time.now

      expect(after_time).to eq before_time
    end
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sue445/rspec-time_stop.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
