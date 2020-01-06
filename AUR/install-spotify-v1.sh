#!/bin/sh
set -e

if pacman -Qi spotify &> /dev/null; then

    echo "################################################################"
    echo "################## Spotify is already installed"
    echo "################################################################"

else

    git clone https://aur.archlinux.org/spotify.git ~/temp/spotify
    cd ~/temp/spotify
    makepkg -s --skippgpcheck
    sudo pacman -U --noconfirm --needed spotify-*.pkg.tar.xz

fi
