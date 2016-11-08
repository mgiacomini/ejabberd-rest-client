# Ejabberd::Rest::Client

Welcome to ejabberd admin client for REST API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ejabberd-rest-client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ejabberd-rest-client

## Usage

Create new client instance, with admin credentials:

```ruby
ejabberd_admin = Ejabberd::Rest::Client.new(
   jid: 'admin@im.juster.com.br', 
   password: '****',
   ejabberd_api: 'http://im.juster.com.br:5280'
)
```

Test if your service is working:
```ruby
works = ejabberd_admin.is_running? # true/false
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ejabberd-rest-client.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

