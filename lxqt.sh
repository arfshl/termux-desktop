#!/data/data/com.termux/files/usr/bin/bash
# Install x11 and tur repo
termux-setup-storage
apt update
apt install x11-repo
apt update

# Update installed package but keep configuration
apt upgrade -y -o Dpkg::Options::="--force-confold"

# Install depedency
apt install curl wget nano -y

# Install LXQt
apt install -y tigervnc termux-x11 pulseaudio dbus-x11 lxqt

cat <<'EOF' > /data/data/com.termux/files/usr/bin/startx11
#!/bin/sh
LD_PRELOAD=/system/lib64/libskcodec.so
pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1
export XDG_RUNTIME_DIR=${TMPDIR}
kill -9 $(pgrep -f "termux.x11") 2>/dev/null
kill -9 $(pgrep -f "x11") 2>/dev/nul
termux-x11 :0 >/dev/null &
sleep 3
export PULSE_SERVER=127.0.0.1 
export XDG_RUNTIME_DIR=${TMPDIR}
DISPLAY=:0 dbus-launch --exit-with-session lxqt-session
EOF

# Setting up VNC
mkdir -p ~/.vnc

# Create VNC password file (default 12345678)
printf "12345678" | vncpasswd -f > ~/.vnc/passwd
chmod 600 ~/.vnc/passwd

echo '#!/data/data/com.termux/files/usr/bin/sh
export PULSE_SERVER=127.0.0.1
export DISPLAY=:1
dbus-launch --exit-with-session lxqt-session' >> ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup

echo '#!/data/data/com.termux/files/usr/bin/sh
LD_PRELOAD=/system/lib64/libskcodec.so
pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1
vncserver :1
echo "VNC server address: 127.0.0.1:5901 Password: 12345678"' >> /data/data/com.termux/files/usr/bin/startvnc
chmod +x /data/data/com.termux/files/usr/bin/startvnc

echo '#!/data/data/com.termux/files/usr/bin/sh
vncserver -kill :1' >> /data/data/com.termux/files/usr/bin/stopvnc
chmod +x /data/data/com.termux/files/usr/bin/stopvnc

echo '#!/data/data/com.termux/files/usr/bin/sh
stopvnc
startvnc' >> /data/data/com.termux/files/usr/bin/restartvnc
chmod +x /data/data/com.termux/files/usr/bin/restartvnc

echo 'To start termux-x11 session use startx11 command'
echo 'To start VNC use startvnc command'
echo 'To stop VNC use stopvnc command'
echo 'To restart VNC use restartvnc command'
startvnc
