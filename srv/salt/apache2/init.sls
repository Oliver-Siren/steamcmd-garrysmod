apache2:
  pkg.installed

/var/www/html/index.html:
  file:
    - managed
    - source: salt://apache2/index.html
    - require: 
      - pkg: apache2

restart_apache2:
  cmd.run:
    - name: 'sudo systemctl restart apache2.service'

ufw:
  pkg.installed
