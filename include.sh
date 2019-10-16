#!/usr/bin/env bash

HERE=~/bash-files

source $HERE/aliases.sh

source $HERE/aws/profiles.sh
source $HERE/aws/codepipeline.sh

source $HERE/android/aliases.sh

source $HERE/git/aliases.sh
source $HERE/git/gitclean.sh
source $HERE/git/commit.sh
source $HERE/git/pull.sh
source $HERE/git/push.sh
source $HERE/git/bspush.sh

source $HERE/node/aliases.sh

# source $HERE/php/phpunit.sh
# source $HERE/php/sniff.sh

source $HERE/osx/ipcopy.sh

source $HERE/docker/aliases.sh
source $HERE/docker/dockrm.sh
source $HERE/docker/dockstart.sh
source $HERE/docker/dockstop.sh
source $HERE/docker/dockssh.sh
source $HERE/docker/docklogs.sh

source $HERE/vagrant/aliases.sh

source $HERE/functions/projects.sh

source $HERE/variables.sh
source $HERE/work-functions.sh
