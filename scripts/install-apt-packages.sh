#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


PKGLIST=`tr '\n' ' ' < "${DIR}/../config/apt-packages.list"`

# install list from main repositories
sudo apt -y install $PKGLIST
