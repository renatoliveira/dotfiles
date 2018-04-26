# dotfiles

Personal relatively important ricing configs and tips

## How to make the i3bar get the same color scheme that is set by wal

On the `bar` section of i3's config file, create a inner section called `colors`. The available variables can be found on i3's website: https://i3wm.org/docs/userguide.html#_colors.

`set_from_resource $color0 i3wm.color0` will, for example, set the variable `$color0` with the same value found on `.Xresources` file (which are the ones **wal** will set).

Tip: fire up a text editor which supports color highlighting (like VSCode with a Color Highlight extension)
and open, for example, your `~/.cache/wal/colors.css` file. Wal should have put something in there when generating a theme for the first time (and it replaces those files when generating new ones). Those files should list the 16 colors available for you to set on your config file.

Expected result:

```bar {
	status_command i3status
        colors {
                set_from_resource $color0 i3wm.color0
                set_from_resource $color1 i3wm.color1
                set_from_resource $color2 i3wm.color2
                set_from_resource $color3 i3wm.color3
                set_from_resource $color4 i3wm.color4
                set_from_resource $color5 i3wm.color5
                set_from_resource $color6 i3wm.color6
                set_from_resource $color7 i3wm.color7
                set_from_resource $color8 i3wm.color8
                set_from_resource $color9 i3wm.color9
                set_from_resource $color10 i3wm.color10
                set_from_resource $color11 i3wm.color11
                set_from_resource $color12 i3wm.color12
                set_from_resource $color13 i3wm.color13
                set_from_resource $color14 i3wm.color14
                set_from_resource $color15 i3wm.color15

                background $color0
                statusline $color15
                separator $color8
                focused_workspace $color0 $color2 $color
        }
}
```
