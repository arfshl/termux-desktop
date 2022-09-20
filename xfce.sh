#!/data/data/com.termux/files/usr/bin/bash
echo "Termux GUI installer (XFCE)"
cd
pkg install -y x11-repo
pkg install -y tigervnc xfce4 xfce4-terminal netsurf
mkdir .vnc
echo '#!/data/data/com.termux/files/usr/bin/sh' >> ~/.vnc/xstartup
echo 'xfce4-session &' >> ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
echo '#!/data/data/com.termux/files/usr/bin/sh' >> /data/data/com.termux/files/usr/bin/vncstart
echo 'vncserver -localhost' >> /data/data/com.termux/files/usr/bin/start
chmod +x /data/data/com.termux/files/usr/bin/start
echo '#!/data/data/com.termux/files/usr/bin/sh' >> /data/data/com.termux/files/usr/bin/vncstop
echo 'vncserver -kill :1' >> /data/data/com.termux/files/usr/bin/stop
chmod +x /data/data/com.termux/files/usr/bin/stop
echo '#!/data/data/com.termux/files/usr/bin/sh' >> /data/data/com.termux/files/usr/bin/restart
echo 'vncserver -kill :1' >> /data/data/com.termux/files/usr/bin/restart
echo 'vncserver -localhost' >> /data/data/com.termux/files/usr/bin/restart
chmod +x /data/data/com.termux/files/usr/bin/restart
echo 'To start VNC use start command'
echo 'To stop VNC use stop command'
echo 'To restart VNC use restart command'
export DISPLAY=":1"
vncserver -localhost
