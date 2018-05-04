# Smile Rubocop

This gem holds a shared rubocop config for Smile.io Ruby repositories.
Installing the gem will also install a version of Rubocop compatible with this
config.

## Installation

Add this line to your application's Gemfile:

```ruby
source "https://gem.fury.io/smileio/" do
  gem 'smile_rubocop'
end
```

And then execute:

    $ bundle

## Usage

To use within your project, create a file named `.rubocop.yml` in the root of
your project, with the following content:
```yml
inherit_gem:
  smile_rubocop:
    - default.yml
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then push to the Smile.io Gemfury repo.
