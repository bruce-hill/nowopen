# nowopen

`nowopen` is a simple program to display which places are currently open.

![Preview](https://bitbucket.org/spilt/nowopen/downloads/nowopen_preview.gif)

## Installing

`sudo make install` to install, and `sudo make uninstall` to uninstall.
You should also create a file to store business hours in at either
`~/.local/share/nowopen/businesshours` (recommended) or `~/.businesshours`.
An example businesshours file is provided, so you can get started by
running `mkdir -p ~/.local/share/nowopen && cp example_businesshours ~/.local/share/nowopen/businesshours`.
The businesshours format looks like:

```
Mario Bros Plumbing (plumbers):
    7am-6:30pm
    sun: closed
```

## Usage

Once you have a businesshours file, run `nowopen [tag1 tag2...]`.
Establishments matching any of the specified tags (prefix matching is used) and
the amount of time till they close will be displayed. E.g. `nowopen plumber`
will show how long "Mario Bros Plumbing" is open.

### Flags

- `-h`/`--help`: Print the usage and exit.
- `-w`/`--where`: Print where the config file is stored and exit.
- `-r`/`--random`: Pick a single random option.
- `-p`/`--plain`: Print the results to stdout in plain text.
