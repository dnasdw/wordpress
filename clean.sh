#!/bin/bash

root_cwdir=`pwd`
root_rootdir=`dirname "$0"`
cd "$root_rootdir"
root_rootdir=`pwd`

./stop.sh

if [ -d last_log_nginx ]; then
    echo "remove last_log_nginx"
    sudo rm -rf last_log_nginx
fi

if [ -d log_nginx ]; then
    echo "move log_nginx to last_log_nginx"
    mv log_nginx last_log_nginx
fi

if [ -d last_mysql ]; then
    echo "remove last_mysql"
    sudo rm -rf last_mysql
fi

if [ -d mysql ]; then
    echo "move mysql to last_mysql"
    mv mysql last_mysql
fi

if [ -d last_wordpress ]; then
    echo "remove last_wordpress"
    sudo rm -rf last_wordpress
fi

if [ -d wordpress ]; then
    echo "move wordpress to last_wordpress"
    mv wordpress last_wordpress
fi

cd "$root_cwdir"
