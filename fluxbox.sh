#!/data/data/com.termux/files/usr/bin/bash
pkg install -y x11-repo
pkg -y update
pkg install -y tigervnc fluxbox
echo 'fluxbox-generate_menu' >> ~/.vnc/xstartup
echo 'fluxbox &' >> ~/.vnc/xstartup
export DISPLAY=":1"
echo 'export DISPLAY=":1"' >> ~/.bashrc
vncserver -localhost
vncserver -list
