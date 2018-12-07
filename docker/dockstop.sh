#!/usr/bin/env bash

function dockstop () {
    if [ $1 ]
    then
        echo -e " \e[43m Stopping..." $reset_color
        docker stop $1
    else
        string=$(docker ps --format '{{.Names}}')
        eval "arr=($string)"
        select CONTAINER in $arr;
        do
            echo -e " \e[43m Stopping..." $reset_color
            docker stop $(docker ps -aqf "name=$CONTAINER")

            return 0
        done
    fi
}

function dockstopa () {
    echo -e " \e[43m Stopping..." $reset_color
    docker stop $(docker ps -q)
}
