#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


PKGLIST=`tr '\n' ' ' < "${DIR}/../config/nodejs-globals.list"`

# install list from main repositories
npm install -g $PKGLIST

npm ls -g --depth=0
