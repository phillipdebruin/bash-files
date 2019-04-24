#!/usr/bin/env bash

function dockstart () {
    if [ $1 ]
    then
        echo -e " \e[43m Starting..." $reset_color
        docker start $1
    else
        string=$(docker ps --filter "status=exited" --format '{{.Names}}')
        eval "arr=($string)"
        select CONTAINER in $arr;
        do
            echo -e " \e[43m Starting..." $reset_color
            docker start $(docker ps -aqf "name=$CONTAINER")

            return 0
        done
    fi
}
