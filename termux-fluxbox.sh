#!/data/data/com.termux/files/usr/bin/bash
pkg install x11-repo
pkg install -y tigervnc fluxbox
echo '#!/data/data/com.termux/files/usr/bin/sh' >> ~/.vnc/xstartup
echo 'fluxbox-generate_menu' >> ~/.vnc/xstartup
echo 'fluxbox &' >> ~/.vnc/xstartup
echo 'export DISPLAY=":1"' >> ~/.bashrc
vncserver -localhost
