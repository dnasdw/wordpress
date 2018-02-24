#!/bin/bash

cwdir=`pwd`
rootdir=`dirname "$0"`
cd "$rootdir"
rootdir=`pwd`

docker-compose up -d

../mod.sh

cd "$cwdir"
