#!/bin/bash

#run as root
#apt install sudo
#usermod -a -G sudo x

sudo apt install neofetch
sudo apt install vim git neovim
sudo apt install build-essential bash-completion intel-microcode iw wpasupplicant cryptsetup
sudo apt install pulseaudio pulseaudio-module-jack pulseaudio-equalizer pavucontrol # or pavucontrol-qt
sudo apt install xserver-xorg xserver-xorg-video-intel xserver-xorg-input-libinput xcape xinit x11-xserver-utils xbacklight xcalib xautolock xclip
sudo apt install i3blocks i3lock-fancy i3status
sudo apt install python-pip python-testresources  python-dev python3-pip python3-testresources  python3-dev
sudo apt install urlview rsync htop ranger qutebrowser r-base lxappearance firefox libreoffice-calc
sudo apt install newsboat calcurse mpd mpc mpv youtube-dl lm-sensors dnsutils tlp powertop gnupg
sudo apt install compton ffmpeg feh scrot tmux mupdf cmatrix openvpn ncmpcpp acpi tree imagemagick w3m w3m-img sxiv wget curl fontconfig acpi-call-dkms
sudo apt install smartmontools openssh-client pass dunst transmission-cli transmission-remote-cli unrar atool figlet mediainfo poppler-utils bluez clang-7 cmake rclone
sudo apt install audacity darktable klavaro parted nodejs npm keepassxc gimp highlight openvpn-systemd-resolved speedometer
# For st and dmenu
sudo apt install libx11-dev libxft-dev libxinerama-dev
sudo apt install mono-complete fsharp

# TODO:
# stride
# paper-icon-theme-git (maybe not needed)
# keybase (maybe not needed)
# yadm (maybe not needed)
# youtube-viewer (maybe not needed)
# sc-im (maybe not needed)

# i3-gaps
mkdir /home/x/src
cd /home/x/src/
sudo apt install libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps/
autoreconf --force --install
rm -rf build
mkdir -p build && cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make -j3
sudo make install

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# pamixer
sudo apt install libpulse-dev libboost-program-options-dev
cd /home/x/src
git clone https://github.com/cdemoulins/pamixer.git
cd pamixer
make -j3
sudo make install

# polybar
sudo apt install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev

# Microsoft
# dotnet-sdk
# mssql-server
# mssql-tools
# skypforlinux



# fonts
# ttf-font-awesome-4
# terminus-font
# ttf-inconsolata
# noto-fonts
# ttf-linux-libertine
# ttf-sourcesanspro

# other cmds
# sudo /usr/sbin/dpkg-reconfigure sddm
# sudo apt install kde-full

