# `include_all`

You've heard of [`require_all`](https://github.com/jarmo/require_all), now meet `include_all`! Written
for the purpose of including functions from a `require`'d module without typing them all out, this niche,
but personally useful, gem shines brightest when used in conjunction with a Ruby monolith.

## Installation

`gem install 'include_all'` or include in your `Gemfile`: `gem 'include_all'`

## Usage

It's best used after something that has a lot of items you'd like to include but not do so individually.
Let's assume that the `methods` module has a bunch of stuff we'd like to bring in.
```ruby
require 'require_all`
require 'include_all`

require 'methods'
include_all
```
The `include_all` gem will automatically _diff_ the list of `require`d objects and figure out what's missing.
