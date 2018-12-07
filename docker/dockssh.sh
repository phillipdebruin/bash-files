#!/usr/bin/env bash

function dockssh () {
    if [ $1 ]
    then
        docker exec -it $1 /bin/bash
    else
        echo ""
        docker ps --format 'table {{.ID}}\t{{.Names}}\t{{.Image}}'
        echo ""
        string=$(docker ps --format '{{.Names}}')
        eval "arr=($string)"
        select CONTAINER in $arr;
        do
            docker exec -it $CONTAINER /bin/bash

            return 0
        done
    fi
}
