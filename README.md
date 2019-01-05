# nowopen

`nowopen` is a simple program to display which places are currently open.

## Usage

First, create a file with business hours in it at either `~/.local/share/nowopen/businesshours`
(recommended) or `~/.businesshours`. An example businesshours file is provided.
The format looks like:

```
Mario Bros Plumbing (plumbers):
    7am-6:30pm
    sun: closed
```

Once you have a businesshours file, run `nowopen [-p] [tag1 tag2...]`. Establishments
matching any of the specified tags (prefix matching is used) and the amount of
time till they close will be displayed. E.g. `nowopen plumber` will show how long
"Mario Bros Plumbing" is open. The "-p" flag can be used to print plain text to
stdout instead of displaying in a temporary display with colors.
