#!/data/data/com.termux/files/usr/bin/bash
echo "Termux GUI installer (MATE)"
cd
pkg install -y x11-repo
pkg install -y tigervnc mate-* marco mate-terminal
mkdir .vnc

echo '#!/data/data/com.termux/files/usr/bin/sh
mate-session &' >> ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup

echo '#!/data/data/com.termux/files/usr/bin/sh
vncserver -localhost' >> /data/data/com.termux/files/usr/bin/start
chmod +x /data/data/com.termux/files/usr/bin/start

echo '#!/data/data/com.termux/files/usr/bin/sh
vncserver -kill :1' >> /data/data/com.termux/files/usr/bin/stop
chmod +x /data/data/com.termux/files/usr/bin/stop

echo '#!/data/data/com.termux/files/usr/bin/sh
vncserver -kill :1
vncserver -localhost' >> /data/data/com.termux/files/usr/bin/restart
chmod +x /data/data/com.termux/files/usr/bin/restart

echo 'To start VNC use start command'
echo 'To stop VNC use stop command'
echo 'To restart VNC use restart command'
export DISPLAY=":1"
vncserver -localhost
