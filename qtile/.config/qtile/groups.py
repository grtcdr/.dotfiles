from libqtile import layout
from libqtile.config import Match, Group

groups = [
    Group("q", matches=[Match(wm_class=["firefox"])]),
    Group("s", matches=[Match(wm_class=["Alacritty"])]),
    Group("d", matches=[Match(wm_class=["Thunar"])]),
    Group("f", matches=[Match(wm_class=["code-oss"])]),
    Group("u"),
    Group("i", matches=[Match(wm_class=["Signal"])]),
    Group("o", matches=[Match(wm_class=["discord"])]),
    Group("p", layout='floating', matches=[Match(wm_class=["Steam"])]),
]
