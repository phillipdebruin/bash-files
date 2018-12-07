#!/usr/bin/env bash

function dockrm () {
    if [ $1 ]
    then
        dockstop $1
        echo -e " \e[43m Removing..." $reset_color
        docker rm $1
    else
        string=$(docker ps -a --format '{{.Names}}')
        eval "arr=($string)"
        select CONTAINER in $arr;
        do
            ID=$(docker ps -aqf "name=$CONTAINER")
            dockstop $ID
            echo -e " \e[43m Removing..." $reset_color
            docker rm $ID

            return 0
        done
    fi
}

function dockrma () {
    dockstopa
    echo -e " \e[43m Removing..." $reset_color
    docker rm $(docker ps -aq)
}
