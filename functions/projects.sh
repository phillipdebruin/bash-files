#!/usr/bin/env bash

function update-projects () {
    work
    echo ""
    echo -e "\e[45m Updating projects " $reset_color
    echo ""
    for d in $(ls -d */);
    do
        cd $d
        if [ -d .git ]
        then
            update
        fi
        work
    done
}

function clean-projects () {
    work
    echo ""
    echo -e "\e[45m Cleaning projects " $reset_color
    echo ""
    for d in $(ls -d */);
    do
        cd $d
        if [ -d .git ]
        then
            clean
        fi
        work
    done
}

function refresh-projects () {
    work
    echo ""
    echo -e "\e[45m Refreshing projects " $reset_color
    echo ""
    for d in $(ls -d */);
    do
        cd $d
        if [ -d .git ]
        then
            refresh
        fi
        work
    done
}

function update() {
    if [[ -z $(git status -s) ]]
    then
        echo -e "\e[44m Updating ${PWD##*/} " $reset_color
    	echo ""
        fetch
        if [ "$(git branch | grep "master")" ]
        then
            master
            pullm
        fi
        if [ "$(git branch | grep "develop")" ]
        then
            develop
            pulld
        else
            echo ""
            echo -e "\e[43m ${PWD##*/} is not on gitflow " $reset_color
        fi
    	echo ""
        echo -e "\e[42m Updated ${PWD##*/} " $reset_color
    else
        echo ""
        echo -e "\e[41m ${PWD##*/} needs your attention " $reset_color
        echo ""
    fi
}

function clean() {
    if [[ -z $(git status -s) ]]
    then
        echo -e "\e[44m Cleaning ${PWD##*/} " $reset_color
    	echo ""
        gitclean
        gitprune
    	echo ""
        echo -e "\e[42m Cleaned ${PWD##*/} " $reset_color
    else
        echo ""
        echo -e "\e[41m ${PWD##*/} needs your attention " $reset_color
    fi
}

function refresh() {
    if [[ -z $(git status -s) ]]
    then
        update
        echo ""
        clean
        echo ""
    else
        echo ""
        echo -e "\e[41m ${PWD##*/} has pending changes " $reset_color
        echo ""
    fi
}
