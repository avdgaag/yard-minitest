# YARD::Minitest

Parse Minitest files to read all the test case descriptions and include those
with the relevant classes in your YARD documentation. This works for both
ActiveSupport-style `test` blocks and regular old `def test_` methods. Test
cases get listed at the bottom of your class documentation and include the
test source code, file name and line numbers.

**This is very much a toy project to play with YARD plugins.** If you find it
useful then pull requests are welcome.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yard-minitest'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yard-minitest

## Usage

YARD::Minitest is a YARD plugin, so you can activate it explicitly when you run
`yardoc`:

    $ yardoc --plugin minitest

Alternatively, you can have YARD always look for any installed plugin by setting
its `load_plugins` configuration:

    $ yard config load_plugins true

Remember to include your test files when documenting your project; otherwise
your tests will not be found.

    $ yardoc app/**/*.rb test/**/*.rb

## Contributing

1. Fork it ( https://github.com/avdgaag/yard-minitest/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
