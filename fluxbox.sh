#!/data/data/com.termux/files/usr/bin/bash
cd
pkg install -y x11-repo
pkg update -y
pkg install -y tigervnc fluxbox
mkdir .vnc
echo 'fluxbox-generate_menu' >> ~/.vnc/xstartup
echo 'fluxbox &' >> ~/.vnc/xstartup
export DISPLAY=":1"
vncserver -localhost
