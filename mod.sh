#!/bin/bash

root_cwdir=`pwd`
root_rootdir=`dirname "$0"`
cd "$root_rootdir"
root_rootdir=`pwd`

if [ -d wordpress ]; then
    sudo chmod -R 777 wordpress
fi

cd "$root_cwdir"
