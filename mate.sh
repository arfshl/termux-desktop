#!/data/data/com.termux/files/usr/bin/bash
cd
pkg install -y x11-repo
pkg update -y
pkg install -y tigervnc mate-* marco mate-terminal netsurf
mkdir .vnc
echo 'mate-session &' >> ~/.vnc/xstartup
export DISPLAY=":1"
vncserver -localhost
