# Termux Desktop
Termux Graphical Environment installer with preconfigured sound, VNC, and termux-x11 startup script 
## You Need
- [Termux App](https://github.com/termux/termux-app/releases)
- [Termux:X11](https://github.com/termux/termux-x11/releases)
- [VNC Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)
## Installation
- XFCE

      apt update && apt dist-upgrade && curl -O https://github.com/arfshl/termux-desktop/raw/main/xfce.sh && sh xfce.sh && rm xfce.sh

- MATE
 
      apt update && apt dist-upgrade && curl -O https://github.com/arfshl/termux-desktop/raw/main/mate.sh && sh mate.sh && rm mate.sh

- LXQt

      apt update && apt dist-upgrade && curl -O https://github.com/arfshl/termux-desktop/raw/main/lxqt.sh && sh lxqt.sh && rm lxqt.sh

- Fluxbox

      apt update && apt dist-upgrade && curl -O https://github.com/arfshl/termux-desktop/raw/main/fluxbox.sh && sh fluxbox.sh && rm fluxbox.sh

- Openbox

      apt update && apt dist-upgrade && curl -O https://github.com/arfshl/termux-desktop/raw/main/openbox.sh && sh openbox.sh && rm openbox.sh
