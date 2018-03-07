#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rsync -a --log-file "${DIR}/../logs/home.log" "${DIR}/../config/home/" ~/
