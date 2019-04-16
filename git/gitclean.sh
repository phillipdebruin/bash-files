#!/usr/bin/env bash

function gitclean () {
    if [ "$(git branch | grep  -v "master" | grep -v "release")" != "" ]
    then
        git branch | grep -v "master" | grep -v "release" | xargs git branch -d
    fi

    return 0
}
