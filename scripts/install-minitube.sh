#!/bin/bash

wget -O ~/Desktop/minitube.deb https://flavio.tordini.org/files/minitube/minitube.deb
sudo dpkg -i ~/Desktop/minitube.deb
sudo apt -f install # install missing dependendies
