# HotelMatcher



## Installation


Install the gem and add to the application's Gemfile by executing:

    $ bundle add hotel_matcher

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install hotel_matcher

if you want to add in your queue you do you important stuff as a callback by configuration:
```
HotelMatcher.configure do |config|
  config.after_run = ->(result) { do_important_stuff(result) }
end

```

## Usage

./bin/hotel_matcher "DoubleTree Hilton Amsterdam"

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hotel_matcher.
