# Arch Dotfiles
My very basic arch linux dotfiles

```
      /\           (◔◡◔) ➜ muhky@Archery 
     /  \          -------------------------- 
    /\   \         ╭ distro ➜ Arch x86_64 
   /      \        ⋮ kernel ➜ 6.1.64-1-lts 
  /   ,,   \       ⋮ packages ➜ 710 
 /   |  |  -\      ⋮ shell ➜ zsh 5.9 
/_-''    ''-_\     ╰ de ➜ Hyprland 
                    
                   ╭ terminal ➜ kitty 
                   ⋮ cpu ➜ Pentium Silver N5000 (4) @ 1.100GHz 
                   ⋮ gpu ➜ GeminiLake [UHD Graphics 605] 
                   ╰ memory ➜ 429MiB / 3742MiB 
                    
                   ⬤ root (/) ➜ 9.4G / 64G (16%) 
                   -------------------------- 
```

> I know it looks trash, but it works (and I'm lazy).

- WM: Hyprland
- FM: nemo
- Launcher: wofi
- Terminal: kitty
- Shell: zsh
- Color scheme: catppuccin

GTK stuff
- Theme: Catppuccin-Mocha-Standard-Sapphire-Dark
- Cursor theme: Bibata-Modern-Ice
- Icon theme: Papirus-Dark
<br>
> Note that I wrote this based off what I remember, so I might forget about a few things.

# Minimal Base Packages
Make sure that you have yay installed.

```
yay -S hyprland-git lxappearance thunar wofi kitty bibata-cursor-theme catppuccin-gtk-theme-mocha nvim ttf-jetbrains-mono-nerd papirus-icon-theme pavucontrol brightnessctl zsh
```

# Extra Packages
```
yay -S noto-fonts noto-fonts-cjk noto-fonts-extra
```

# Installation

Copy .config to ~/.config, and .zshrc to ~/.

Open lxappearance, then set the theme (personally I use the sapphire one).
Also set the cursor to Bibata.

Since lxappearance doesn't modify the gtk config, we are going to do it manually.
`nvim ~/.config/gtk-3.0/settings.ini`
And change gtk-cursor-theme-name to the one you selected in lxappearance.

**IMPORTANT** also change the gtk configs in /usr/share/gtk-2.0 (and 3.0)
For gtk-3.0 it's settings.ini, gtk-2.0 would be gtkrc.

If your browser (e.g Chromium) isn't respecting your cursor theme, **open ~/.icons/default/index.theme then change the `Inherits` key to the cursor theme you selected in lxappearance.**
