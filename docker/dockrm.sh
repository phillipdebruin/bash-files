#!/usr/bin/env bash

function dockrm () {
    if [ $1 ]
    then
        dockstop $1
        docker rm $1
    else
        dockstop
        docker rm $(docker ps -a -q)
    fi
}
