/home/konsta/garrysmod_ds:
  file:
    - managed
    - source: salt://steamcmd/garrysmod_ds
run_script: 
  cmd.run:
    - name: 'steamcmd +runscript /home/konsta/garrysmod_ds'
