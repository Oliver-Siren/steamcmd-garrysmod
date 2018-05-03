steam:
  cmd.run:
    - name: 'sudo dpkg --add-architecture i386'
  debconf.set:
    - data:
        steam/question: {'type': 'select', 'value': 'I AGREE'}
        steam/license: {'type': 'note', 'value': ''}
  pkg.installed:
    - sources:
      - steam-launcher: https://steamcdn-a.akamaihd.net/client/installer/steam.deb
    - require:
      - debconf: steam
steamcmd:
  pkg.installed:
    - pkgs:
      - steamcmd
