#!/usr/bin/env bash

function commit () {
    echo ""
    git commit -m "$1"
    echo ""
    echo -e "\U1F346 \e[42m Committed "$reset_color
    echo ""

    return 0
}
