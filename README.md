# termux-desktop
Desktop installer for Termux
## You Need
- [VNC Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)
## Installation
- XFCE

      pkg update && pkg install wget -y && wget https://github.com/arfshl/termux-gui/raw/main/xfce.sh -P ~/ && sh xfce.sh && rm xfce.sh

- MATE
 
      pkg update && pkg install wget -y && wget https://github.com/arfshl/termux-gui/raw/main/mate.sh -P ~/ && sh mate.sh && rm mate.sh

- LXQt

      pkg update && pkg install wget -y && wget https://github.com/arfshl/termux-gui/raw/main/lxqt.sh -P ~/ && sh lxqt.sh && rm lxqt.sh

- Fluxbox

      pkg update && pkg install wget -y && wget https://github.com/arfshl/termux-gui/raw/main/fluxbox.sh -P ~/ && sh fluxbox.sh && rm fluxbox.sh

- Openbox

      pkg update && pkg install wget -y && wget https://github.com/arfshl/termux-gui/raw/main/openbox.sh -P ~/ && sh openbox.sh && rm openbox.sh
