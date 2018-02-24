#!/bin/bash

root_cwdir=`pwd`
root_rootdir=`dirname "$0"`
cd "$root_rootdir"
root_rootdir=`pwd`

container_id=`docker ps -a -q -f name=docker_my_wordpress`
if [ -n "$container_id" ]; then
    docker stop docker_my_wordpress
    docker rm -v docker_my_wordpress
fi

container_id=`docker ps -a -q -f name=docker_my_nginx`
if [ -n "$container_id" ]; then
    docker stop docker_my_nginx
    docker rm -v docker_my_nginx
fi

container_id=`docker ps -a -q -f name=docker_my_mysql`
if [ -n "$container_id" ]; then
    docker stop docker_my_mysql
    docker rm -v docker_my_mysql
fi

./mod.sh

cd "$root_cwdir"
