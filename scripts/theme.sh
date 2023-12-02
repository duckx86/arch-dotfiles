# Set with lxappearance first!
# Changes theme of cursor with gsettings
# For hyprland, change the cursor theme either by using `hyprctl setcursor` or hyprland.conf
CURSOR_THEME=Bibata-Modern-Ice
CURSOR_SIZE=21

gsettings set org.gnome.desktop.interface cursor-theme $CURSOR_THEME

hyprctl setcursor $CURSOR_THEME $CURSOR_SIZE

# TODO: Fix for chromium not following global theme settings
# 1. The solution is to modify ~/.icons/default/index.theme `Inherits` key to the value of $CURSOR_THEME.
# 2. But also, most importantly. lxappearance won't modify ~/.config/gtk-3.0/settings.ini for cursor theme
#    So you need to change gtk-cursor-theme-name and any other paramaters that you need to change.
# Not sure if this is necesarry to be written in this script, but this will be rewritten into the readme.
