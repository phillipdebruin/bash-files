#!/usr/bin/env bash

function bspush () {
    BRANCH=$(git rev-parse --abbrev-ref HEAD)
    if [ $BRANCH != "master" ]
    then
    echo -e "\U1F6A9  \e[44m git push --set-upstream --no-verify origin $BRANCH "$reset_color
    echo ""
    git push --set-upstream --no-verify origin $BRANCH
    echo ""
    echo -e "\U1F6A9 \e[42m Red flag, pushed without testing, disgusting."$reset_color
    echo ""
    else
    echo ""
    echo -e "\e[42m Don't push to master."$reset_color
    echo ""
    fi
}
