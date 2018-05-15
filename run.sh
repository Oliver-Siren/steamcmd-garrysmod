#!/bin/bash
echo "Installing Salt and Git"
sudo apt-get update
sudo apt-get -y  install git salt-minion
echo "Retrieving and Applying Settings"
echo 'master: localhost' |sudo tee /etc/salt/minion
echo "Installing SteamCMD"
git clone https://github.com/a1702645/steamcmd-garrysmod
echo "done"
cd steamcmd-garrysmod
sudo salt-call --local --file-root srv/salt/ state.highstate
steamcmd +runscript ~/garrysmod_ds
echo "starting server"
cd ~/garrysmod
./srcds_run -game garrysmod -maxplayers 16 +gamemode sandbox +map gm_flatgrass
