#!/usr/bin/env bash

alias dockup="docker-compose up"
alias dockupb="docker-compose up --build"
alias dockps="docker ps"
alias dockpsa="docker ps -a"
alias dockprune="docker images -f dangling=true | awk '{print $3}' | xargs docker rmi"
