# Custom modules
from modifiers import *
from layouts import *
from keybindings import *
from screens import screens
from rules import floating_layout
from groups import groups

# Qtile libraries
from typing import List
from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy

# General Settings
widget_defaults = dict(
    font='JetBrains Mono',
    fontsize=15,
    padding=4,
)

extension_defaults = widget_defaults.copy()

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
follow_mouse_focus = True
bring_front_click = True
cursor_warp = False
auto_fullscreen = True
focus_on_window_activation = "smart"
wmname = "LG3D"
