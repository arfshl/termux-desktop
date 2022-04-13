#!/data/data/com.termux/files/usr/bin/bash
pkg install x11-repo
pkg update
pkg install -y tigervnc openbox pypanel xorg-xsetroot
echo '#!/data/data/com.termux/files/usr/bin/sh' >> ~/.vnc/xstartup
echo 'openbox-session &' >> ~/.vnc/xstartup
echo 'xsetroot -solid gray' >> ~/.vnc/xstartup
echo 'pypanel &' >> ~/.vnc/xstartup
echo 'export DISPLAY=":1"' >> ~/.bashrc
vncserver -localhost
