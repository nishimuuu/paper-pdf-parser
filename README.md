


# Paper::Pdf::Parser

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/paper/pdf/parser`. To experiment with that code, run `bin/console` for an interactive prompt.


## Dependencies

- k2pdfopt (http://www.willus.com/k2pdfopt/)

## Installation
### Install k2pdfopt

1. Access [this url](http://www.willus.com/k2pdfopt/download/)
2. Select version by OS and 32/64 bit
3. Put CAPTHA and download
4. Move to `/usr/local/bin`
5. Confirm to use `k2pdfopt` command

### Install paper pdf parser

```ruby
gem 'paper-pdf-parser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install paper-pdf-parser

## Usage

```
Commands:
  p3 help [COMMAND]  # Describe available commands or one specific command
  p3 path            # Extract references from local file
  p3 url             # Extract references from pdf URL

  Options:
  Working dir, [--work-dir=WORK_DIR]   # Set working dir(default: /tmp)
                                       # Default: /tmp
  Working in dir, [--dir], [--no-dir]  # work to make dir or not(default: true)
                                       # Default: true
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/paper-pdf-parser. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

