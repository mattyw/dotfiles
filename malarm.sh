#!/bin/bash

# Do a terminal bell and play a sound.
# Useful to alert that long running tasks have ended
set -e
echo -e "\a"
paplay /usr/share/sounds/gnome/default/alerts/bark.ogg
