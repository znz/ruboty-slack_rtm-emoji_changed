# Ruboty::SlackRTM::EmojiChanged

Notify when [emoji_changed](https://api.slack.com/events/emoji_changed) with [ruboty-slack_rtm](https://rubygems.org/gems/ruboty-slack_rtm).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruboty-slack_rtm-emoji_changed'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install ruboty-slack_rtm-emoji_changed

## Usage

- Create `#emoji` or set `SLACK_EMOJI_CHANGED_CHANNEL=#emoji_channel` to env.

- Add emoji
- Add alias of emoji
- Remove emojis

### Do not notify when removed

- Set `SLACK_EMOJI_IGNORE_REMOVED=1` to env.

If you want to be compatible with [emoy_webhook](https://github.com/sue445/emoy_webhook).

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/znz/ruboty-slack_rtm-emoji_changed.
