# Sendout

A ruby gem createb by [SmartTechys](http://www.smarttechys.co.ao) for the [SendOut](https://www.sendoutapp.com) API that allows your application to send text messages (Angolan and International).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sendout'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sendout

## Setup

- Make sure you've registed at [SendOut](https://www.sendoutapp.com) and have produced your token(api_token) and id(your registered phone number).
- Setup your environments variables
```ruby
SO_API_ID=244911222333
SO_API_TOKEN=your_api_token_obtained_from_control_panel_at_sendout
```

## Usage

At the moment there's only two sendOut endpoints in production:

- Check your balance
- Send one or bulk message

### Check your balance

```ruby
Sendout.check_balance

# It will return a json

{ 
  "cliente": {
     "saldo": "512"
     "enviada": "203"
  } 
}
```

### Send one or bulk message

```ruby
Sendout.send_sms(num, msg)

# The num has to be an array and the msg an string. This method will return a boolean
```
## Help and Docs

- [SendOut](https://www.sendoutapp.com)
- [RDoc](https://www.rubydoc.info/gems/0.1.0)

## Development

- You can fork it
- bundle
- bundle rake exec
- Make your feature addition or fix a bug
- Do not  mess with the rakefile version or history (do not submit version bump PLEASE or put it in a different commit so we can ignore it when pull)
- Send us the pull request

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/smaziano/sendout. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
