#!/data/data/com.termux/files/usr/bin/sh
echo "Termux GUI installer (Fluxbox)"
cd
pkg install -y x11-repo
pkg install -y tigervnc fluxbox
mkdir .vnc

echo '#!/data/data/com.termux/files/usr/bin/sh
fluxbox-generate_menu
fluxbox &' >> ~/.vnc/xstartup
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
