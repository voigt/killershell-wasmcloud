#!/bin/bash

echo "Installing scenario..."
while [ ! -f /tmp/finished ]; do sleep 1 && echo "."; done
echo DONE

direnv allow
source /root/.bashrc
