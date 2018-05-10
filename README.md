# Itamae::Plugin::Recipe::Grafana

[![Build Status](https://travis-ci.com/ohr486/itamae-plugin-recipe-grafana.svg?branch=master)](https://travis-ci.com/ohr486/itamae-plugin-recipe-grafana)

itamae plugin to install grafana

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itamae-plugin-recipe-grafana'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itamae-plugin-recipe-grafana

## Usage

### Recipe

```ruby
# your recipe
include_recipe "grafana::default"
```

### Node

```yml
# node.yml
grafana:
  # target grafana version
  version: 5.1.2
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/itamae-plugin-recipe-grafana. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Code of Conduct

Everyone interacting in the Itamae::Plugin::Recipe::Grafana project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/itamae-plugin-recipe-grafana/blob/master/CODE_OF_CONDUCT.md).
