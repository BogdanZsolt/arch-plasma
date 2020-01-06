#!/bin/bash
set -e

echo "Installing category Accessories"

echo "Installing category Development"

sh AUR/install-code-v1.sh
sudo pacman -S --noconfirm --needed atom

echo "Installing category Graphics"

sudo pacman -S --noconfirm --needed inkscape
sudo pacman -S --noconfirm --needed krita 

echo "Installing category Internet"

sh AUR/install-google-chrome-v1.sh
sh AUR/install-chromium-widevine-v1.sh
sudo pacman -S --noconfirm --needed chromium
sudo pacman -S --noconfirm --needed firefox

echo "Installing category Multimedia"

sh AUR/install-spotify-v1.sh
sudo pacman -S --noconfirm --needed simplescreenrecorder
sudo pacman -S --noconfirm --needed kdenlive
sudo pacman -S --noconfirm --needed vlc

echo "Installing category System"

sh AUR/install-downgrade-v*.sh
sh AUR/install-inxi-v*.sh
sh AUR/install-screenkey-git-v*.sh
sh AUR/install-yad-v*.sh
sudo pacman -S --noconfirm --needed bleachbit
sudo pacman -S --noconfirm --needed curl
sudo pacman -S --noconfirm --needed dmidecode
sudo pacman -S --noconfirm --needed ffmpegthumbnailer
sudo pacman -S --noconfirm --needed git
sudo pacman -S --noconfirm --needed glances
sudo pacman -S --noconfirm --needed gparted
sudo pacman -S --noconfirm --needed grsync
sudo pacman -S --noconfirm --needed gtk-engine-murrine
sudo pacman -S --noconfirm --needed gvfs gvfs-mtp
sudo pacman -S --noconfirm --needed hardinfo
sudo pacman -S --noconfirm --needed hddtemp
sudo pacman -S --noconfirm --needed htop
sudo pacman -S --noconfirm --needed lm_sensors
sudo pacman -S --noconfirm --needed lsb-release
sudo pacman -S --noconfirm --needed mlocate
sudo pacman -S --noconfirm --needed net-tools
sudo pacman -S --noconfirm --needed sane
sudo pacman -S --noconfirm --needed scrot
sudo pacman -S --noconfirm --needed simple-scan
sudo pacman -S --noconfirm --needed sysstat
sudo pacman -S --noconfirm --needed tumbler
sudo pacman -S --noconfirm --needed vnstat
sudo pacman -S --noconfirm --needed wget
sudo pacman -S --noconfirm --needed wmctrl
sudo pacman -S --noconfirm --needed unclutter
sudo pacman -S --noconfirm --needed xdg-user-dirs
sudo pacman -S --noconfirm --needed xdo
sudo pacman -S --noconfirm --needed xdotool
sudo pacman -S --noconfirm --needed yakuake
sudo pacman -S --noconfirm --needed reflector
sudo pacman -S --noconfirm --needed kde-applications-meta
sudo pacman -S --noconfirm --needed imagemagick 
sudo pacman -S --noconfirm --needed kde-gtk-config
sudo pacman -S --noconfirm --needed libappindicator-gtk3
sudo pacman -S --noconfirm --needed packagekit-qt5
sudo pacman -S --noconfirm --needed w3m
sudo pacman -S --noconfirm --needed libmicrodns 
sudo pacman -S --noconfirm --needed protobuf
sudo pacman -S --noconfirm --needed latte-dock
sudo pacman -S --noconfirm --needed tmux

echo "DESKTOP SPECIFIC APPLICATIONS"

###############################################################################################

# installation of zippers and unzippers
sudo pacman -S --noconfirm --needed unace unrar zip unzip sharutils  uudeview  arj cabextract file-roller

###############################################################################################

sh AUR/install-hardcode-fixer-git-v*.sh
sudo hardcode-fixer

echo "################################################################"
echo "#### Software from standard Arch Linux Repo installed  #########"
echo "################################################################"
