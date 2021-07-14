from settings import Settings
from libqtile import bar, widget

mybar = bar.Bar(
    [
        widget.GroupBox(
            inactive='707070',
            disable_drag=True,
            borderwidth=2,
            padding_x=8,
            padding_y=3,
            this_current_screen_border='A6B1E1',
            urgent_alert_method='line',
            highlight_method='line',
            urgent_border='984447',
        ),
        widget.Sep(
            size_percent=30,
            padding=12,
        ),
        widget.CurrentLayout(
            foreground='A6B1E1',
        ),
        widget.Sep(
            size_percent=30,
            padding=12,
        ),
        widget.WindowName(
            foreground='CACACE',
            format='{name}',
            max_chars=40,
        ),
        widget.Spacer(),
        widget.Systray(
            padding=20,
        ),
        widget.Sep(
            size_percent=30,
            foreground='000000',
            padding=16,
        ),
        widget.Backlight(
            foreground='A6B1E1',
            fmt='BRI: {}',
            backlight_name='intel_backlight',
            step=5,
        ),
        widget.Sep(
            size_percent=50,
            padding=16,
        ),
        widget.Battery(
            foreground='D1D7F0',
            fmt='BAT: {}',
            format='{percent:2.0%}',
            show_short_text=False,
        ),
        widget.Sep(
            size_percent=50,
            padding=16,
        ),
        widget.Clock(
            foreground='A6B1E1',
            format='%a, %I:%M %p',
        ),
    ],
    32,
    background="#000000",
    margin=[0, 0, Settings.gap, 0]
)

# WLAN WIDGET {{{

# widget.Wlan(
#    foreground='BE4B92',
#    format=' NET: {essid} ',
#    interface='wlp0s20f3',
#    disconnected_message='NET: -',
# ),

# }}}
