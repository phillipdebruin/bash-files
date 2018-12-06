#!/usr/bin/env bash

function gitclean () {
    if [ "$(git branch | grep  -v "master" | grep -v "develop")" != "" ]
    then
        git branch | grep -v "master" | grep -v "develop" | xargs git branch -d
    fi

    return 0
}
