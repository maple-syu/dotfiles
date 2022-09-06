#!/bin/sh

echo "searching for .Xresources"
XRES=~/.Xresources
[ -f "$XRES" ] && { echo "$XRES exists. copying to repo..."; cp "$XRES" ./Xresources/Xresources; }

echo "searching for polybar config and launch script"
POLYCONF=~/.config/polybar/config.ini
[ -f "$POLYCONF" ] && { echo "$POLYCONF exists. copying to repo..."; cp "$POLYCONF" ./polybar/config.ini; }
POLYLAUNCH=~/.config/polybar/launch.sh
[ -f "$POLYLAUNCH" ] && { echo "$POLYLAUNCH exists. copying to repo..."; cp "$POLYLAUNCH" ./polybar/launch; }

echo "searching for i3 config"
I3CONF=~/.config/i3/config
[ -f "$I3CONF" ] && { echo "$I3CONF exists. copying to repo..."; cp "$I3CONF" ./i3/config; }

echo "searching for bspwm config and keybinds"
BSPWMCONF=~/.config/bspwm/bspwmrc
[ -f "$BSPWMCONF" ] && { echo "$BSPWMCONF exists. copying to repo..."; cp "$BSPWMCONF" ./bspwm/bspwmrc; }
SXHKDCONF=~/.config/sxhkd/sxhkdrc
[ -f "$SXHKDCONF" ] && { echo "$SXHKDCONF exists. copying to repo..."; cp "$SXHKDCONF" ./bspwm/sxhkdrc; }

echo "searching for neofetch config and special ascii file"
NFETCHCONF=~/.config/neofetch/config.conf
[ -f "$NFETCHCONF" ] && { echo "$NFETCHCONF exists. copying to repo..."; cp "$NFETCHCONF" ./neofetch/config; }
NFASCII=~/.config/neofetch/ascii
[ -f "$NFASCII" ] && { echo "$NFASCII exists. copying to repo..."; cp "$NFASCII" ./neofetch/ascii; }

echo "searching for xinitrc"
XINIT=~/.xinitrc
[ -f "$XINIT" ] && { echo "$XINIT exists. copying to repo..."; cp "$XINIT" ./Xinitrc/xinitrc; }

echo "searching for picom config"
PICOMCONF=~/.config/picom/picom.conf
[ -f "$PICOMCONF" ] && { echo "$PICOMCONF exists. copying to repo..."; cp "$PICOMCONF" ./picom/picom; }

echo "searching for kitty config and theme"
KITTYCONF=~/.config/kitty/kitty.conf
[ -f "$KITTYCONF" ] && { echo "$KITTYCONF exists. copying to repo..."; cp "$KITTYCONF" ./kitty/kitty; }
KITTYTHEME=~/.config/kitty/theme.conf
[ -f "$KITTYTHEME" ] && { echo "$KITTYTHEME exists. copying to repo..."; cp "$KITTYTHEME" ./kitty/theme; }

echo "searching for bashrc"
BRC=~/.bashrc
[ -f "$BRC" ] && { echo "$BRC exists. copying to repo..."; cp "$BRC" ./bashrc/bashrc; }
