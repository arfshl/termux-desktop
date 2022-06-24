#!/data/data/com.termux/files/usr/bin/bash
echo "Termux GUI installer (Openbox)"
cd
pkg install -y x11-repo
pkg update
pkg install -y tigervnc openbox pypanel xorg-xsetroot
mkdir .vnc
echo '#!/data/data/com.termux/files/usr/bin/sh' >> ~/.vnc/xstartup
echo 'openbox-session &' >> ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
export DISPLAY=":1"
vncserver -localhost
