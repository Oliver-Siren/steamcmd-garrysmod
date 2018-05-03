#!/bin/bash
sudo salt-call --local --file-root srv/salt/ state.highstate --state-output applied -1 warning
