#!/bin/sh

xsetroot -cursor_name left_ptr
xrdb -merge ~/.Xresources
feh --bg-scale ~/Downloads/train.jpg &

xscreensaver -no-splash &

export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx 
export QT_IM_MODULE=fcitx 

eval `dbus-launch --sh-syntax --exit-with-session`

fcitx &

xmobar &

exec xmonad

