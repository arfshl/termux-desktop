#!/data/data/com.termux/files/usr/bin/bash
pkg install x11-repo
pkg update
pkg install -y tigervnc xfce4 xfce4-terminal netsurf
echo '#!/data/data/com.termux/files/usr/bin/sh' >> ~/.vnc/xstartup
echo 'xfce4-session &' >> ~/.vnc/xstartup
echo 'export DISPLAY=":1"' >> ~/.bashrc
vncserver -localhost
