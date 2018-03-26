#!/bin/bash

# rsync config files
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rsync -a --log-file "${DIR}/../logs/home.log" "${DIR}/../config/home/" ~/

# set auto mount to off
gsettings set org.gnome.desktop.media-handling automount false
