#!/data/data/com.termux/files/usr/bin/bash
pkg install -y x11-repo
pkg -y update
pkg install -y tigervnc openbox pypanel xorg-xsetroot
echo 'openbox-session &' >> ~/.vnc/xstartup
echo 'xsetroot -solid gray' >> ~/.config/openbox/autostart
echo 'pypanel &' >> ~/.config/openbox/autostart
export DISPLAY=":1"
echo 'export DISPLAY=":1"' >> ~/.bashrc
vncserver -localhost
