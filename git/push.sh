#!/usr/bin/env bash

function push () {
    BRANCH=$(git rev-parse --abbrev-ref HEAD)
    echo -e "\U261D  \e[44m git push origin $BRANCH "$reset_color
    echo ""
    git push origin $BRANCH
    echo ""
    echo -e "\U1F346 \e[42m Pushed "$reset_color
    echo ""
}
