#!/bin/sh

xsetroot -cursor_name left_ptr &
/usr/lib/gnome-settings-daemon/gnome-settings-daemon &
ibus-daemon -x -d &
python2 ~/goagent2/local/proxy.py &
exec dbus-launch xmonad
