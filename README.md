# AbilityEngine

AbilityEngine is a Ruby on Rails engine that provides the
current_ability CanCan (https://github.com/ryanb/cancan/)
object through a controller action as json:

    http://<your-server>/ability_engine/current_ability

This is very handy when you need to expose the current_ability to,
for example, a browser client.

**Warning:** AbilityEngine will and an unauthenticated
controller to your project by which the current_ability
is exposed. If you consider the rules in your Ability
class to be confidential then this will break your
security model.

## Installation

Add this line to your application's Gemfile:

    gem 'ability_engine'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ability_engine

## Requirements

AbilityEngine expects a current_ability object to be available
in your applications controller scope. This is provided by
CanCan's Ability class that defines all the abilities that
a particular user might have. Refer to cancan's documentation
for information on how to set this up.
https://github.com/ryanb/cancan/wiki

## Usage

After you've installed ability_engine to your project you need
to your rails app, you need to add the following line to
config/routes.rb:

    mount AbilityEngine::Engine, :at => "ability_engine"

This will mount the ability_engine routes under ability_engine/

If you now browse to 

    http://<your-server>/ability_engine/current_ability

you should see the current_ability object as json

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
