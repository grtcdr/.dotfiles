from libqtile import layout
from libqtile.config import Match
from config import floating_theme

floating_layout = layout.Floating(float_rules=[
    *layout.Floating.default_float_rules,
    Match(wm_class='ssh-askpass'),
    Match(title='pinentry'),
    Match(wm_class='gcolor3'),
    Match(wm_class='thunar'),
    Match(wm_class='Steam'),
    Match(wm_class='nm-connection-editor'),
    Match(wm_class='obs'),
    Match(wm_class='flameshot'),
    Match(wm_class='file-roller'),
    Match(wm_class='pavucontrol'),
], **floating_theme)
