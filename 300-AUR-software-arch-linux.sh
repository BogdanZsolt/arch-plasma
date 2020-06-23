#!/bin/bash
set -e
##################################################################################################################
# Author	:	Erik Dubois
##################################################################################################################

echo "Installing category Development"

sh AUR/install-code-v*.sh
sh AUR/install-local-by-flywheel-bin-v*.sh

echo "Installing category Internet"

sh AUR/install-google-chrome-v*.sh
sh AUR/install-chromium-widevine-v*.sh

echo "Installing category Multimedia"

sh AUR/install-spotify-v*.sh

echo "Installing category Other"

echo "Installing category System"

sh AUR/install-appimagelauncher-git-v*.sh
sh AUR/install-downgrade-v*.sh
sh AUR/install-pamac-aur-v*.sh
sh AUR/install-inxi-v*.sh
sh AUR/install-screenkey-git-v*.sh
sh AUR/install-teamviewer-v3.sh
sh AUR/install-yad-v*.sh

sh AUR/install-hardcode-fixer-git-v*.sh
sudo hardcode-fixer

echo "################################################################"
echo "################# Arch Linux Software installed ################"
echo "################################################################"
