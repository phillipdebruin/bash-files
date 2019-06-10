#!/usr/bin/env bash

function gitclean () {
    LIST=$(git branch)
    echo $LIST
    if [ "$(git branch | grep  -v "*" | grep  -v "master" | grep -v "release")" != "" ]
    then
        git branch | grep -v "*" | grep -v "master" | grep -v "release" | xargs git branch -d
    fi

    return 0
}
