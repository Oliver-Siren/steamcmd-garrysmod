#allow 32bit software
cmd.run:
  sudo dpkg --add-architecture i386
#install SteamCmd
pkg.installed:
  steamcmd  
