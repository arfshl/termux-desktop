#!/data/data/com.termux/files/usr/bin/bash
echo "Termux GUI installer (LXQt)"
cd
pkg install -y x11-repo
pkg update
pkg install -y tigervnc lxqt otter-browser qterminal openbox
mkdir .vnc
echo '#!/data/data/com.termux/files/usr/bin/sh' >> ~/.vnc/xstartup
echo 'lxqt-session &' >> ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
export DISPLAY=":1"
vncserver -localhost
