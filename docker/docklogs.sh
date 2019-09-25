#!/usr/bin/env bash

function docklogs () {
    if [ $1 ]
    then
        docker logs -f  $1
    else
        echo ""
        docker ps --format 'table {{.ID}}\t{{.Names}}\t{{.Image}}'
        echo ""
        string=$(docker ps -a --format '{{.Names}}')
        eval "arr=($string)"
        select CONTAINER in $arr;
        do
            docker logs -f $CONTAINER

            return 0
        done
    fi
}
