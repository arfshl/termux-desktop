#!/data/data/com.termux/files/usr/bin/bash
pkg install x11-repo
pkg install -y tigervnc lxqt qterminal otter-browser
echo '#!/data/data/com.termux/files/usr/bin/sh' >> ~/.vnc/xstartup
echo 'lxqt-session &' >> ~/.vnc/xstartup
echo 'export DISPLAY=":1"' >> ~/.bashrc
vncserver -localhost
