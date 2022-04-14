#!/data/data/com.termux/files/usr/bin/bash
pkg install -y x11-repo
pkg -y update
pkg install -y tigervnc lxqt qterminal otter-browser
echo 'lxqt-session &' >> ~/.vnc/xstartup
export DISPLAY=":1"
echo 'export DISPLAY=":1"' >> ~/.bashrc
vncserver -localhost
vncserver -list
