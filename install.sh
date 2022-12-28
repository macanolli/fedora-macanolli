#!/bin/bash

echo "this may take a bit..."
# Updating System
# dnf update -y
if [[ "${UPDATE}" == "y" ]]; then
  debug "Updating system..."
  debug "$(sudo dnf update -y 2>&1)"
fi

cp -r /home/dotconfig ~/.config
cp /home/bashrc ~/.bashrc
cp /home/gitconfig ~/.gitconfig 


exit 0
