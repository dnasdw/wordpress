#!/bin/bash

cwdir=`pwd`
rootdir=`dirname "$0"`
cd "$rootdir"
rootdir=`pwd`

docker stop $(docker ps -a -q)
docker rm -v $(docker ps -a -q)

cd "$cwdir"
