# Kip

Command Line Tool for Kipalog

## Installation

Install this awesome gem with:

    $ gem install kip

Don't forget add your personal Kipalog API key to `~/.bash_profile`:

```bash
export KIPALOG_API=<your-kipalog-api-key>
```

## Usage

```
Commands:
  kip help [COMMAND]                                  # Describe available commands or one specific command
  kip post file.md -g, --tags=TAGS -t, --title=TITLE  # Post your markdown file to Kipalog
```

For example:

```bash
kip post an-awesome-post.md --title="This is an awesome post" --tags="golang,til,ruby,js"
```

To post a markdown file in Draft mode, you can specific the `--publish` option as `false`:

```bash
kip post an-awesome-post.md --title="This is an awesome post" --tags="golang,til,ruby,js" --publish=false
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/huytd/kip. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

