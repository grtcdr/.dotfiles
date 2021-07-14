# Apps is a container for the different programs I use.
class Apps(object):
    launcher = 'rofi -show drun -show-icons'
    activities = 'rofi -show window -show-icons'
    browser = 'firefox'
    terminal = 'alacritty'
    lockscreen = 'i3lock -c 1c1f21'
    files = 'thunar'
    emoji_picker = 'rofi -show emoji -modi emoji'

# Settings is a container for global configuration options
class Settings(object):
    font = 'DM Sans'
    font_size = 15
    gap = 10
    border_width = 1
