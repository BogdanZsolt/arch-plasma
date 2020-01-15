#!/bin/bash
set -e

sudo pacman -S --noconfirm --needed wget
sudo pacman -S --noconfirm --needed git
sudo pacman -S --noconfirm --needed curl
sudo pacman -S --noconfirm --needed htop
sudo pacman -S --noconfirm --needed neofetch
sudo pacman -S --noconfirm --needed wavemon
sudo pacman -S --noconfirm --needed mc
sh AUR/install-zsh-v3.sh
