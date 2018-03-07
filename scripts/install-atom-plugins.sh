#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


PKGLIST=`tr '\n' ' ' < "${DIR}/../config/atom-plugins.list"`

# install list from main repositories
apm install $PKGLIST
