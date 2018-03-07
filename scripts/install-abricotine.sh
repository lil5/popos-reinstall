#!/bin/bash

curl -s -L https://github.com/brrd/Abricotine/releases/latest | egrep -o '/brrd/Abricotine/releases/download/[0-9\.]*/Abricotine.*-ubuntu-debian-x64.deb' | wget --base=http://github.com/ -i - -O ~/Desktop/abricotine.deb

sudo dpkg -i ~/Desktop/abricotine.deb
sudo apt -f install # install missing dependendies
