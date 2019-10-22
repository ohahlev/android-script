#!/bin/sh
unset SESSION_MANAGER unset DBUS_SESSION_BUS_ADDRESS startxfce4 & [ -x /etc/vnc/xstartup ] && exec /etc/vnc/xstartup [ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources xsetroot -solid grey vncconfig -iconic 
/usr/bin/vncserver -kill :1 
/usr/bin/vncserver -geometry 768x1280 -depth 24
export DISPLAY=:1.0
/android/tools/emulator -avd nexus4 -verbose -memory 2048 -gpu swiftshader_indirect -no-audio 
