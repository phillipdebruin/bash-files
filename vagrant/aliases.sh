#!/usr/bin/env bash

alias homestead="cd ~/Homestead"
alias vup="homestead ; vagrant up ; vssh"
alias vrep="homestead ; vagrant reload --provision ; vssh"
alias vssh="homestead ; vagrant ssh -- -t 'cd code ; /bin/bash'"