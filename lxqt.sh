#!/data/data/com.termux/files/usr/bin/bash
cd
pkg install -y x11-repo
pkg update
pkg install -y tigervnc lxqt qterminal otter-browser
mkdir .vnc
echo 'lxqt-session &' >> ~/.vnc/xstartup
export DISPLAY=":1"
echo 'export DISPLAY=":1"' >> ~/.bashrc
vncserver -localhost
