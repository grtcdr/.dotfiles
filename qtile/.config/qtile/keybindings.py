from settings import Apps
from modifiers import *
from groups import groups
from libqtile.config import Key, Group, Click, Drag
from libqtile.lazy import lazy


keys = [
    # Highlighting windows
    Key([SUPER], "h", lazy.layout.left()),
    Key([SUPER], "l", lazy.layout.right()),
    Key([SUPER], "j", lazy.layout.down()),
    Key([SUPER], "k", lazy.layout.up()),
    Key([SUPER], "space", lazy.layout.next()),

    # Window movement
    Key([SUPER, SHIFT], "h", lazy.layout.shuffle_left()),
    Key([SUPER, SHIFT], "l", lazy.layout.shuffle_right()),
    Key([SUPER, SHIFT], "j", lazy.layout.shuffle_down()),
    Key([SUPER, SHIFT], "k", lazy.layout.shuffle_up()),

    # Growing windows
    Key([SUPER, CTL], "h", lazy.layout.grow_left()),
    Key([SUPER, CTL], "l", lazy.layout.grow_right()),
    Key([SUPER, CTL], "j", lazy.layout.grow_down()),
    Key([SUPER, CTL], "k", lazy.layout.grow_up()),
    Key([SUPER], "n", lazy.layout.normalize()),

    # Toggle between split and unsplit sides of stack.
    # Key([SUPER, SHIFT], "Return", lazy.layout.toggle_split()),

    # Toggle between different layouts as defined below
    Key([SUPER], TAB, lazy.next_layout()),

    # Session control
    Key([SUPER, CTL], "r", lazy.restart()),
    Key([SUPER, CTL], "q", lazy.shutdown()),

    # Window control
    Key([SUPER], "y", lazy.window.toggle_fullscreen()),
    Key([SUPER], "v", lazy.window.toggle_floating()),
    Key([SUPER], "w", lazy.window.kill()),

    # Group navigation
    Key([SUPER], "Right", lazy.screen.next_group()),
    Key([SUPER], "Left", lazy.screen.prev_group()),

    # Launch programs
    Key([SUPER], "Return", lazy.spawn(Apps.terminal)),
    Key([SUPER], "r", lazy.spawn(Apps.launcher)),
    Key([SUPER], "a", lazy.spawn(Apps.activities)),
    Key([SUPER], "n", lazy.spawn(Apps.emoji_picker)),
    Key([SUPER], "e", lazy.spawn(Apps.files)),
    Key([ALT], "l", lazy.spawn(Apps.lockscreen)),
    Key([SUPER], "b", lazy.spawn(Apps.browser)),

    # Audio Output Control
    Key([], "XF86AudioRaiseVolume", lazy.spawn("pamixer -i 5")),
    Key([], "XF86AudioLowerVolume", lazy.spawn("pamixer -d 5")),
    Key([], "XF86AudioMute", lazy.spawn("pamixer -t")),

    # Audio Input Control
    Key([], "XF86AudioMicMute", lazy.spawn("mute_mic")),

    # Brightness Control
    Key([], "XF86MonBrightnessUp", lazy.spawn("sudo xbacklight -inc 5")),
    Key([], "XF86MonBrightnessDown", lazy.spawn("sudo xbacklight -dec 5")),

    # Track Control
    Key([], "XF86AudioPlay", lazy.spawn("playerctl play-pause")),
    Key([], "XF86AudioStop", lazy.spawn("playerctl stop")),
    Key([], "XF86AudioPrev", lazy.spawn("playerctl previous")),
    Key([], "XF86AudioNext", lazy.spawn("playerctl next")),
]

# Keybindings for moving things around groups
for i in groups:
    keys.extend([
        # SUPER + Letter of group = Switch to group
        Key([SUPER], i.name, lazy.group[i.name].toscreen()),

        # SUPER + SHIFT + Letter of group = Switch to & move focused window to group
        Key([SUPER, SHIFT], i.name, lazy.window.togroup(
            i.name, switch_group=True)),
    ])


# Mouse bindings
mouse = [
    Drag([SUPER], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([SUPER], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
]
