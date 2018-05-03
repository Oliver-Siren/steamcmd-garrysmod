#!/bin/bash
echo "starting server"
cd /home/konsta/garrysmod
./srcds_run -game garrysmod -maxplayers 16 +gamemode sandbox +map gm_flatgrass
