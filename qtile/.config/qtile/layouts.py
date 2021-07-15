from settings import Settings
from libqtile import layout

floating_theme = {
    "name": "Flosi",
    "border_width": Settings.border_width,
    "border_focus": "808589",
    "border_normal": "27292A"
}

layouts = [
    layout.Columns(
        name='Kolumno',
        border_focus='808589',
        border_normal='27292A',
        border_focus_stack='808589',
        border_normal_stack='27292A',
        border_on_single=True,
        border_width=Settings.border_width,
        margin=Settings.gap,
        fair=True,
    ),
    layout.Max(
        name='Max',
    ),
    layout.Floating(
        **floating_theme
    ),
]
