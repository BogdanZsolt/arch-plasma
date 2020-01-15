#!/bin/bash
set -e

git clone https://aur.archlinux.org/vala-panel-appmenu-xfce-git.git ~/temp/vala-panel-appmenu-xfce-git
cd ~/temp/vala-panel-appmenu-xfce-git
sed -i 's/'_disable_mate=0'/'_disable_mate=1'/g' PKGBUILD 
sed -i 's/'_disable_vala=0'/'_disable_vala=1'/g' PKGBUILD
sed -i 's/'_disable_budgie=0'/'_disable_budgie=1'/g' PKGBUILD
makepkg -s
trizen -S --noconfirm --needed appmenu-gtk-module-git
sudo pacman -S --noconfirm --needed libdbusmenu-glib libdbusmenu-gtk3 libdbusmenu-gtk2
sudo pacman -U --noconfirm --needed vala-panel-appmenu-common-git-*.pkg.tar.xz
sudo pacman -U --noconfirm --needed vala-panel-appmenu-xfce-git-*.pkg.tar.xz
xfconf-query -c xsettings -p /Gtk/Modules -n -t string -s "appmenu-gtk-module"
xfconf-query -c xsettings -p /Gtk/ShellShowsMenubar -n -t bool -s true
xfconf-query -c xsettings -p /Gtk/ShellShowsAppmenu -n -t bool -s true
rm -rf ~/temp/vala-panel-appmenu-xfce-git
