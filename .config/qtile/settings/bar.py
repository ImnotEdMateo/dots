from qtile_extras import widget
from libqtile import bar, layout, widget
from qtile_extras.widget.decorations import BorderDecoration
from libqtile.config import Click, Drag, Group, Key, Match, Screen

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.CurrentLayoutIcon(),
                widget.GroupBox(
                    fontsize=11,
                    highlight_method="text",
                    highlight_color="#1d2021",
                    this_current_screen_border="#fabd2f",
                    foreground="#ebdbb2",
                    active="#fbf1c7",
                    inactive="#a89984",
                    padding=4,
                ),
                widget.Spacer(),
                widget.Systray(),
                widget.Battery(
                    format="{char} {percent:2.0%} ",
                    discharge_char="  󰁹",
                    charge_char="  󰂄",
                ),
                widget.Volume(emoji=True, emoji_list=["󰝟", "󰕿", "󰖀", "󰕾"], fontsize=15, font="Hack Nerd Font Mono"),
                widget.Volume(),
                widget.Clock(format=" %H:%M "),
            ],
            32,
            background="#1d2021",
            foreground="#ebdbb2",
            margin=4,
            # border_width=[2, 0, 2, 0],  # Draw top and bottom borders
            # border_color=["ff00ff", "000000", "ff00ff", "000000"]  # Borders are magenta
        ),
        x11_drag_polling_rate=60,
    ),
]

