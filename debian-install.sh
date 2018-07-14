#!/bin/bash

#run as root
#apt install sudo
#usermod -a -G sudo x

sudo apt install vim git neovim
#sudo apt install kde-full
sudo apt install neofetch
#sudo /usr/sbin/dpkg-reconfigure sddm
sudo apt-get install build-essential
sudo apt install cryptsetup
sudo apt install newsboat
sudo apt install i3blocks
sudo apt install i3-wm
sudo apt install i3lock-fancy
sudo apt install xcalib
sudo apt install urlview
sudo apt install rsync
sudo apt install htop
sudo apt install xcape
sudo apt install xinit
suda apt install bash-completion intel-microcode iw wpasupplicant
sudo apt install ranger
sudo apt install qutebrowser
sudo apt install r-base
sudo apt install calcurse mpd mpv
sudo apt install lm-sensors
sudo apt install compton ffmpeg feh scrot tmux xautolock mupdf cmatrix openvpn ncmpcpp i3status acpi tree imagemagick w3m w3m-img sxiv bind9utils xclip wget curl libx11-6 libxft2 libxinerama1 fontconfig acpi-call-dkms  smartmontools openssh-client pass dunst transmission-cli transmission-remote-cli unrar atool figlet mediainfo poppler-data bluez clang-7 cmake rclone rxvt-unicode-256color audacity darktable klavaro parted nodejs npm keepassxc
sudo apt install libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev

# i3-gaps
mkdir src
cd src/
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

# fonts

