# Channeltalk Ruby Client

The Channeltalk Client for Ruby. Provides both resource oriented interfaces and API clients for Channeltalk services.

## Links of Interest

* [Channeltalk API Docs](https://developers.channel.io/docs/what-is-open-api)
* [Changelog](https://github.com/itdaa-dev/channeltalk-ruby-sdk/blob/master/CHANGELOG.md)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'channeltalk-ruby-client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install channeltalk-ruby-client

## Usage

### Configuration

Before making requests, you must configure the gem with your key
and secret. If you are using Rails, you can do this in an initializer.

```ruby
Channeltalk.configure do |config|
  config.api_key = "YOUR API KEY"
  config.api_secret = "YOUR API SECRET"
  config.timeout = 10
  config.debug = false
end
```

### API
```ruby
* Channeltalk::Api::User.create_user(params: params)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/channeltalk-ruby-client. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the channeltalk::Ruby::Client project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/itdaa-dev/channeltalk-ruby-client/blob/master/CODE_OF_CONDUCT.md).
