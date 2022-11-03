#!/data/data/com.termux/files/usr/bin/bash
echo "Installing LXQt..."
apt install -y x11-repo
apt install -y tigervnc lxqt otter-browser qterminal openbox
mkdir .vnc
echo "Setting up VNC..."

echo '#!/data/data/com.termux/files/usr/bin/sh
lxqt-session &' >> ~/.vnc/xstartup
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
