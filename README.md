# Smile Rubocop

This gem holds a shared rubocop config for Smile.io Ruby repositories.
Installing the gem will also install a version of Rubocop compatible with this
config.

## Bundler Authentication

This gem is hosted on Github Packages, so you will need to configure bundler to use a github access token in order to install it.

_Note:_ If running `bundle config | grep rubygems.pkg.github.com/smile-io` returns `https://rubygems.pkg.github.com/smile-io/` you've likely already completed this step, and can skip forward to [Installation](#installation).

1) [Create a Github Personal Access Token](https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line)

2) Execute:
```bash
bundle config https://rubygems.pkg.github.com/smile-io USERNAME:TOKEN
```
(replacing `USERNAME` with your github username, and `TOKEN` with your new access token)

## Installation

Add this line to your application's Gemfile:

```ruby
source "https://rubygems.pkg.github.com/smile-io" do
  gem "smile_rubocop"
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
