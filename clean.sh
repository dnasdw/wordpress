#!/bin/bash

cwdir=`pwd`
rootdir=`dirname "$0"`
cd "$rootdir"
rootdir=`pwd`

./stop.sh

sudo rm -rf last_log_nginx
mv log_nginx last_log_nginx
sudo rm -rf last_mysql
mv mysql last_mysql
sudo rm -rf last_wordpress
mv wordpress last_wordpress

cd "$cwdir"
