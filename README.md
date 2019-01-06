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
Once you have a businesshours file, run `nowopen [-p] [tag1 tag2...]`. Establishments
matching any of the specified tags (prefix matching is used) and the amount of
time till they close will be displayed. E.g. `nowopen plumber` will show how long
"Mario Bros Plumbing" is open. The "-p" flag can be used to print plain text to
stdout instead of displaying in a temporary display with colors.
