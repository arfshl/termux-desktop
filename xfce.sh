#!/data/data/com.termux/files/usr/bin/bash
pkg install x11-repo
pkg update
pkg install -y tigervnc xfce4 xfce4-terminal netsurf
echo 'xfce4-session &' >> ~/.vnc/xstartup
export DISPLAY=":1"
echo 'export DISPLAY=":1"' >> ~/.bashrc
vncserver -localhost
vncserver -list
