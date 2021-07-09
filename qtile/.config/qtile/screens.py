from libqtile.config import Screen
from libqtile import bar, widget

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.GroupBox(
                    fmt='<b>{}</b>',
                    spacing=4,
                    inactive='5C5C5C',
                    disable_drag=True,
                    borderwidth=2,
                    padding_x=8,
                    padding_y=3,
                    this_current_screen_border='5AD2F4',
                    urgent_alert_method='line',
                    highlight_method='line',
                    urgent_border='984447',
                ),
                widget.Sep(
                    size_percent=30,
                    padding=12,
                ),
                widget.CurrentLayout(
                    foreground='5AD2F4',
                ),
                widget.Sep(
                    size_percent=30,
                    padding=12,
                ),
                widget.WindowName(
                    foreground='CACACE',
                    format='{name}',
                    fmt='<i>{}</i>',
                    max_chars=40,
                ),
                widget.Spacer(),
                widget.Systray(
                    padding=20,
                ),
                widget.Sep(
                    size_percent=30,
                    foreground='000000',
                    padding=12,
                ),

                widget.Backlight(
                    foreground='73AB83',
                    fmt=' BRI: {} ',
                    backlight_name='intel_backlight',
                    step=5,
                ),
                widget.Battery(
                    foreground='00B7E0',
                    fmt=' BAT: {} ',
                    format='{percent:2.0%}',
                    show_short_text=False,
                ),
                widget.Clock(
                    foreground='F4B266',
                    format=' %a, %I:%M %p',
                ),
            ],
            32,
        ),
    ),
]

# widget.Wlan(
#    foreground='BE4B92',
#    format=' NET: {essid} ',
#    interface='wlp0s20f3',
#    disconnected_message='NET: -',
# ),
