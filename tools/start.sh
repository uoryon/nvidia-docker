#!/bin/bash

CONF="./nvidia-docker-plugin.conf"

if [ ! -f $CONF ]
then
    echo 'config file nvidia-docker-plugin.conf missing'
    exit 2
fi

args=`cat $CONF | grep -v '^#' | tr '\n' ' '`

mkdir -p run

cmd = "./nvidia-docker-plugin $args"
echo $cmd
exec $cmd

