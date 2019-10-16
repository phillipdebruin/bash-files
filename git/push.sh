#!/usr/bin/env bash

function push () {
    BRANCH=$(git rev-parse --abbrev-ref HEAD)
    if [ $BRANCH != "master" ]
    then
    echo -e "\U261D  \e[44m git push origin $BRANCH "$reset_color
    echo ""
    git push origin $BRANCH
    echo ""
    echo -e "\U1F346 \e[42m Pushed "$reset_color
    echo ""
    else
    echo ""
    echo -e "\e[42m Don't push to master."$reset_color
    echo ""
    fi
}
