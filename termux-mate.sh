#!/data/data/com.termux/files/usr/bin/bash
pkg install x11-repo
pkg install tigervnc mate-* marco mate-terminal netsurf
echo '#!/data/data/com.termux/files/usr/bin/sh' >> ~/.vnc/xstartup
echo 'mate-session &' >> ~/.vnc/xstartup
echo 'export DISPLAY=":1"' >> ~/.bashrc
vncserver -localhost
