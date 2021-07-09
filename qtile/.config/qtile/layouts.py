from libqtile import layout

floating_theme = {
    "name": "Flosi",
    "border_width": 3,
    "border_focus": "F8B572",
    "border_normal": "474747"
}

layouts = [
    layout.Columns(
        name='Kolumno',
        border_focus='F8B572',
        border_normal='474747',
        border_focus_stack='F8B572',
        border_normal_stack='474747',
        border_on_single=True,
        border_width=3,
        margin=16,
        fair=True,
    ),
    layout.Floating(
        **floating_theme
    ),
]
