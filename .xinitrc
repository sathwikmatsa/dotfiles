#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# set wallpaper
xwallpaper --zoom $HOME/.config/wallpaper/wall.png &
# dwm status bar
slstatus 2>&1 >/dev/null &
# remap capslock to super (mod4) key
setxkbmap -option caps:super
# treat super as escape when pressed once
xcape -e 'Super_L=Escape'
# decrease keyboard repeat delay
xset r rate 300 50 &

exec dwm
