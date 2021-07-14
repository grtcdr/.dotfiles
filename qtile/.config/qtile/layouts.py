from settings import Settings
from libqtile import layout

floating_theme = {
    "name": "Flosi",
    "border_width": Settings.border_width,
    "border_focus": "8093F1",
    "border_normal": "474747"
}

layouts = [
    layout.Columns(
        name='Kolumno',
        border_focus='8093F1',
        border_normal='474747',
        border_focus_stack='8093F1',
        border_normal_stack='474747',
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
