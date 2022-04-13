#!/data/data/com.termux/files/usr/bin/bash
pkg install x11-repo
pkg update
pkg install -y tigervnc openbox pypanel xorg-xsetroot
echo '#!/data/data/com.termux/files/usr/bin/sh' >> ~/.vnc/xstartup
echo 'openbox-session &' >> ~/.vnc/xstartup
echo 'xsetroot -solid gray' >> ~/.config/openbox/autostart
echo 'pypanel &' >> ~/.config/openbox/autostart
echo 'export DISPLAY=":1"' >> ~/.bashrc
vncserver -localhost
