#!/data/data/com.termux/files/usr/bin/sh
echo "Termux GUI installer (Fluxbox)"
cd
pkg install -y x11-repo
pkg install -y tigervnc fluxbox
mkdir .vnc
echo '#!/data/data/com.termux/files/usr/bin/sh' >> ~/.vnc/xstartup
echo 'fluxbox-generate_menu' >> ~/.vnc/xstartup
echo 'fluxbox &' >> ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
echo '#!/data/data/com.termux/files/usr/bin/sh' >> /data/data/com.termux/files/usr/bin/vncstart
echo 'vncserver -localhost' >> /data/data/com.termux/files/usr/bin/vncstart
chmod +x /data/data/com.termux/files/usr/bin/vncstart
echo '#!/data/data/com.termux/files/usr/bin/sh' >> /data/data/com.termux/files/usr/bin/vncstop
echo 'vncserver -kill :1' >> /data/data/com.termux/files/usr/bin/vncstop
chmod +x /data/data/com.termux/files/usr/bin/vncstop
echo '#!/data/data/com.termux/files/usr/bin/sh' >> /data/data/com.termux/files/usr/bin/restart
echo 'vncserver -kill :1' >> /data/data/com.termux/files/usr/bin/restart
echo 'vncserver -localhost' >> /data/data/com.termux/files/usr/bin/restart
chmod +x /data/data/com.termux/files/usr/bin/restart
echo 'To start VNC use vncstart command'
echo 'To stop VNC use vncstop command'
echo 'To restart VNC use restart command'
export DISPLAY=":1"
vncserver -localhost
