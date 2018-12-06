#!/usr/bin/env bash

function dockstop () {
    if [ $1 ]
    then
        docker stop $1
    else
        docker stop $(docker ps --format "{{.ID}}")
    fi
}
