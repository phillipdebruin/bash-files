#!/usr/bin/env bash

function ipcopy () {
    IP=$(ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}')
    echo $IP
    echo $IP | tr -d '\n' | pbcopy
}