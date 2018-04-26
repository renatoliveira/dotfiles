# dotfiles

Personal relatively important ricing configs and tips

## How to make the i3bar get the same color scheme that is set by wal

On the `bar` section of i3's config file, create a inner section called `colors`. The available variables can be found on i3's website: https://i3wm.org/docs/userguide.html#_colors.

`set_from_resource $color0 i3wm.color0` will, for example, set the variable `$color0` with the same value found on `.Xresources` file (which are the ones **wal** will set).

Tip: fire up a text editor which supports color highlighting (like VSCode with a Color Highlight extension)
and open, for example, your `~/.cache/wal/colors.css` file. Wal should have put something in there when generating a theme for the first time (and it replaces those files when generating new ones). Those files should list the 16 colors available for you to set on your config file.
