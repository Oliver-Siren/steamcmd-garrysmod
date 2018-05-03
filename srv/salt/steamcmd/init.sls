/home/konsta/garrysmod_ds:
  file:
    - managed
    - source: salt://steamcmd/garrysmod_ds
create_folder:
  cmd.run:
    - name: 'mkdir /home/konsta/garrysmod'
run_script: 
  cmd.run:
    - name: 'steamcmd +runscript /home/konsta/garrysmod_ds'
