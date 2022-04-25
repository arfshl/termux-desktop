#!/data/data/com.termux/files/usr/bin/bash
cd
pkg update
pkg install -y tigervnc lxqt qterminal otter-browser
mkdir .vnc
echo '#!/data/data/com.termux/files/usr/bin/sh' >> ~/.vnc/xstartup
echo 'lxqt-session &' >> ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
export DISPLAY=":1"
vncserver -localhost
