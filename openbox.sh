#!/data/data/com.termux/files/usr/bin/bash
echo "Termux GUI installer (Openbox)"
cd
pkg install -y x11-repo
pkg install -y tigervnc openbox pypanel xorg-xsetroot
mkdir .vnc
echo '#!/data/data/com.termux/files/usr/bin/sh' >> ~/.vnc/xstartup
echo 'openbox-session &' >> ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
export DISPLAY=":1"
echo 'To start VNC use vncserver -localhost command'
echo 'To stop VNC use vncserver -kill :1 command'
vncserver -localhost
