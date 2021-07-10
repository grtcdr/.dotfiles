from settings import Settings
from libqtile.config import Screen
from libqtile import bar

from bars import mybar

screens = [
    Screen(
        top=mybar,
        bottom=bar.Gap(Settings.gap),
        left=bar.Gap(Settings.gap),
        right=bar.Gap(Settings.gap),
    ),
]
