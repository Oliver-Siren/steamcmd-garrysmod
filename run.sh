#!/bin/bash
echo "Installing Salt and Git"
sudo apt-get update
sudo apt-get -y  install git salt-minion
echo "Retrieving and Applying Settings"
echo 'master: localhost' |sudo tee /etc/salt/minion
echo "Installing SteamCMD"
git clone https://github.com/a1702645/steamcmd-garrysmod
cd steamcmd-garrysmod
./higstate.sh
echo "Done"
