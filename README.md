# Arch Dotfiles
My simple arch linux dotfiles
- WM: Hyprland
- FM: thunar
- Launcher: wofi
- Terminal: kitty
- Shell: zsh
- Color scheme: catppuccin

GTK stuff
- Theme: Catppuccin-Mocha-Standard-Sapphire-Dark
- Cursor theme: Bibata-Modern-Ice
- Icon theme: Papirus-Dark
**Note that I wrote this based off what I remember, so I might forget about a few things.**

# Base Packages
Make sure that you have yay installed.

```
yay -S hyprland-git lxappearance thunar wofi kitty bibata-cursor-theme catppuccin-gtk-theme-mocha nvim ttf-jetbrains-mono-nerd papirus-icon-theme pavucontrol brightnessctl zsh
```

# Installation
TODO: Make a install script2

Copy .config to ~/.config, and .zshrc to ~/.

Open lxappearance, then set the theme (personally I use the sapphire one).
Also set the cursor to Bibata.

Since lxappearance doesn't modify the gtk config, we are going to do it manually.
`nvim ~/.config/gtk-3.0/settings.ini`
And change gtk-cursor-theme-name to the one you selected in lxappearance.

If your browser (e.g Chromium) isn't respecting your cursor theme, **open ~/.icons/default/index.theme then change the `Inherits` key to the cursor theme you selected in lxappearance.**
