#!/data/data/com.termux/files/usr/bin/bash
pkg install -y x11-repo
pkg update -y
pkg install -y tigervnc mate-* marco mate-terminal netsurf
echo 'mate-session &' >> ~/.vnc/xstartup
export DISPLAY=":1"
echo 'export DISPLAY=":1"' >> ~/.bashrc
vncserver -localhost
vncserver -list
