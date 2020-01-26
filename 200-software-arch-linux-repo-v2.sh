#!/bin/bash
set -e
##################################################################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxb.com
# Website	:	https://www.arcolinuxiso.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# software from standard Arch Linux repositories
# Core, Extra, Community, Multilib repositories
echo "Installing category Accessories"

echo "DESKTOP SPECIFIC APPLICATIONS"

sudo pacman -S --noconfirm --needed kde-applications-meta

echo "Installing category Development"

sh AUR/install-code-v*.sh
#sh AUR/install-sublime-text-v*.sh
#sudo pacman -S --noconfirm --needed atom

echo "Installing category Graphics"

sudo pacman -S --noconfirm --needed inkscape
#sudo pacman -S --noconfirm --needed ristretto

echo "Installing category Internet"

sh AUR/install-google-chrome-v*.sh
sh AUR/install-chromium-widevine-v*.sh
#sh AUR/install-brave-bin-v*.sh
sudo pacman -S --noconfirm --needed chromium
sudo pacman -S --noconfirm --needed firefox

echo "Installing category Multimedia"

sh AUR/install-spotify-v*.sh
#sudo pacman -S --noconfirm --needed krita
#sudo pacman -S --noconfirm --needed kdenlive
sudo pacman -S --noconfirm --needed simplescreenrecorder
sudo pacman -S --noconfirm --needed vlc

echo "Installing category Office"

echo "Installing category Other"

echo "Installing category System"

sh AUR/install-downgrade-v*.sh
sh AUR/install-font-manager-git-v*.sh
sh AUR/install-inxi-v*.sh
sh AUR/install-pamac-aur-v*.sh
sh AUR/install-tela-icon-theme-git-v*.sh
sh AUR/install-inxi-v*.sh
sh AUR/install-screenkey-git-v*.sh
#sh AUR/install-xcursor-breeze-v*.sh
sh AUR/install-yad-v*.sh
sh AUR/install-appimagelauncher-git-v*.sh
sudo pacman -S --noconfirm --needed arc-gtk-theme
sudo pacman -S --noconfirm --needed adapta-gtk-theme
sudo pacman -S --noconfirm --needed materia-gtk-theme
sudo pacman -S --noconfirm --needed papirus-icon-theme
sudo pacman -S --noconfirm --needed archlinux-wallpaper
sudo pacman -S --noconfirm --needed accountsservice
sudo pacman -S --noconfirm --needed accountsservice
sudo pacman -S --noconfirm --needed baobab
sudo pacman -S --noconfirm --needed bleachbit
sudo pacman -S --noconfirm --needed curl
sudo pacman -S --noconfirm --needed dconf-editor
sudo pacman -S --noconfirm --needed dmidecode
sudo pacman -S --noconfirm --needed reflector 
sudo pacman -S --noconfirm --needed ffmpegthumbnailer
sudo pacman -S --noconfirm --needed glances
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
sudo pacman -S --noconfirm --needed screenfetch
sudo pacman -S --noconfirm --needed scrot
sudo pacman -S --noconfirm --needed simple-scan
sudo pacman -S --noconfirm --needed sysstat
sudo pacman -S --noconfirm --needed tumbler
sudo pacman -S --noconfirm --needed vnstat
sudo pacman -S --noconfirm --needed wmctrl
sudo pacman -S --noconfirm --needed unclutter
sudo pacman -S --noconfirm --needed xdg-user-dirs
sudo pacman -S --noconfirm --needed xdo
sudo pacman -S --noconfirm --needed xdotool
sudo pacman -S --noconfirm --needed yakuake
sudo pacman -S --noconfirm --needed imagemagick 
sudo pacman -S --noconfirm --needed kde-gtk-config
sudo pacman -S --noconfirm --needed libappindicator-gtk3
sudo pacman -S --noconfirm --needed packagekit-qt5
sudo pacman -S --noconfirm --needed w3m


###############################################################################################

# installation of zippers and unzippers
sudo pacman -S --noconfirm --needed unace unrar zip unzip sharutils  uudeview  arj cabextract file-roller

###############################################################################################

# these come always last

sh AUR/install-hardcode-fixer-git-v*.sh
sudo hardcode-fixer

echo "################################################################"
echo "################# Arch Linux Software installed ################"
echo "################################################################"
