#! /bin/bash

# tested

wget -O ~/Desktop/atom.deb https://atom.io/download/deb
sudo dpkg -i ~/Desktop/atom.deb
sudo apt -f install # install missing dependendies
