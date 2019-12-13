<img src="./logo.svg" width=350>

- [solidus.io](http://solidus.io/)
- [Documentation](https://guides.solidus.io)
- [Join our Slack](http://slack.solidus.io/) ([solidusio.slack.com](http://solidusio.slack.com))
- [solidus-security](https://groups.google.com/forum/#!forum/solidus-security) mailing list
- [Supported Solidus extensions](http://extensions.solidus.io/)

## solidus_cmd

solidus_cmd is a command line utility for creating extensions for the [Solidus ecommerce platform](https://github.com/solidusio/solidus).

## DEPRECATION NOTICE :warning: :construction:

This extension is deprecated in favor of [Solidus extension dev tools](https://github.com/solidusio-contrib/solidus_extension_dev_tools).

## Getting started

Install the gem!

```bash
$ gem install solidus_cmd
```
Create your Solidus extension with the `solidus extension` command.

```bash
$ solidus extension my_extension
```

A Solidus extension is bundled as a Ruby gem, so be sure to update your `.gemspec` file.

You can now load your extension in your Solidus project's Gemfile.


### Passing options to extensions generator

You can pass `--ci` option to the generator command to configure the CI
platform to use in the extension. By default circleci is used and recommended
but you can also use travis with:

```bash
$ solidus extension my_extension --ci=travis
```

## Questions?

The best way to ask questions is via the [#support channel on the Solidus Slack](https://solidusio.slack.com/messages/support/details/).

## Tests

We use [RSpec](http://rspec.info) for tests. Ideally all PRs include tests!


## Contributing

Solidus is an open source project and we encourage contributions.
