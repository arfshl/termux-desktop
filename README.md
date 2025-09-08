# Termux Desktop
Termux Graphical Environment installer with preconfigured sound, VNC, and termux-x11 startup script 

Script is not Intended for multiple desktop environment installation
## You Need
- [Termux App](https://github.com/termux/termux-app/releases)
- [Termux:X11](https://github.com/termux/termux-x11/releases)
- [VNC Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)
## Installation
- XFCE

      curl -O https://github.com/arfshl/termux-desktop/raw/main/xfce.sh && sh xfce.sh && rm xfce.sh

- MATE
 
      curl -O https://github.com/arfshl/termux-desktop/raw/main/mate.sh && sh mate.sh && rm mate.sh

- LXQt

      curl -O https://github.com/arfshl/termux-desktop/raw/main/lxqt.sh && sh lxqt.sh && rm lxqt.sh

- Cinnamon (Heavy)

      curl -O https://github.com/arfshl/termux-desktop/raw/main/cinnamon.sh && sh cinnamon.sh && rm cinnamon.sh

- Fluxbox

      curl -O https://github.com/arfshl/termux-desktop/raw/main/fluxbox.sh && sh fluxbox.sh && rm fluxbox.sh

- Openbox

      curl -O https://github.com/arfshl/termux-desktop/raw/main/openbox.sh && sh openbox.sh && rm openbox.sh

- Install Firefox Browser, VLC Media Player, and utilities (Except LXQt)
  
      apt update && apt install firefox vlc thunderbird xarchiver atril eog galculator mousepad libheif webp-pixbuf-loader p7zip -y && apt clean
  
- Install Firefox Browser, VLC Media Player, and utilities (For LXQt)
  
      apt update && apt install firefox vlc thunderbird lxqt-archiver atril lximage-qt galculator featherpad libheif webp-pixbuf-loader p7zip -y && apt clean
