# fluent-plugin-formatreport

[Fluentd](https://fluentd.org/) filter plugin that parses redfish metric reports. See http://ftp.dell.com/manuals/common/dell-emc-idrac9-telemetry-streaming-basics.pdf

## Installation

### RubyGems

```
$ gem install fluent-plugin-formatreport
```

### Bundler

Add following line to your Gemfile:

```ruby
gem "fluent-plugin-formatreport"
```

And then execute:

```
$ bundle
```

## Configuration

You can generate configuration template:

```
$ fluent-plugin-config-format filter formatreport
```

You can copy and paste generated documents here.

## Copyright

* Copyright(c) 2021- giozinzi
* License
  * Apache License, Version 2.0
