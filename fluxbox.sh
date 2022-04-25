#!/data/data/com.termux/files/usr/bin/sh
cd
echo "deb https://packages.termux.org/apt/termux-main stable main" >> $PREFIX/etc/apt/sources.list
echo "deb https://packages.termux.org/apt/termux-x11/ x11 main" >> $PREFIX/etc/apt/sources.list
pkg update 
pkg install -y tigervnc fluxbox
mkdir .vnc
echo '#!/data/data/com.termux/files/usr/bin/sh' >> ~/.vnc/xstartup
echo 'fluxbox-generate_menu' >> ~/.vnc/xstartup
echo 'fluxbox &' >> ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
export DISPLAY=":1"
vncserver -localhost
