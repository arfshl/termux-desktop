#!/data/data/com.termux/files/usr/bin/bash
echo "Termux GUI installer (XFCE)"
cd
pkg install -y x11-repo
pkg install -y tigervnc xfce4 xfce4-terminal netsurf
mkdir .vnc
echo '#!/data/data/com.termux/files/usr/bin/sh' >> ~/.vnc/xstartup
echo 'xfce4-session &' >> ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
export DISPLAY=":1"
