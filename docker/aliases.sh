#!/usr/bin/env bash

alias dockup="docker-compose up"
alias dockupb="docker-compose up --build"
alias dockps="docker ps --format 'table {{.Names}}\t{{.Ports}}\t{{.Networks}}\t{{.Image}}\t{{.Status}}\t{{.RunningFor}}\t{{.Size}}\t{{.Command}}'"
alias dockpsa="docker ps -a --format 'table {{.Names}}\t{{.Ports}}\t{{.Networks}}\t{{.Image}}\t{{.Status}}\t{{.RunningFor}}\t{{.Size}}\t{{.Command}}'"
alias dockprune="docker rmi $(docker images -f "dangling=true" -q)"
