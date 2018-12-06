function update-projects () {
    	work
    	echo ""
    	echo -e "\e[44m Updating projects " $reset_color
    	echo ""
    	for d in $(ls -d */);
        do
            cd $d
            if [ -d .git ]; then
                update
            fi;
            work
        done
}

function clean-projects () {
    	work
    	echo ""
    	echo -e "\e[44m Cleaning projects " $reset_color
    	echo ""
    	for d in $(ls -d */);
        do
            cd $d
            if [ -d .git ]; then
                clean
            fi;
            work
        done
}

function refresh-projects () {
    	work
    	echo ""
    	echo -e "\e[44m Refreshing projects " $reset_color
    	echo ""
    	for d in $(ls -d */);
        do
            cd $d
            if [ -d .git ]; then
                refresh
            fi;
            work
        done
}

function update() {
        echo -e "\e[44m Updating ${PWD##*/} " $reset_color
    	echo ""
        fetch
        master
        pullm
        develop
        pulld
    	echo ""
        echo -e "\e[44m Updated ${PWD##*/} " $reset_color
}

function clean() {
        echo -e "\e[44m Cleaning ${PWD##*/} " $reset_color
    	echo ""
        gitclean
        gitprune
    	echo ""
        echo -e "\e[44m Cleaned ${PWD##*/} " $reset_color
}

function refresh() {
        update
        clean
}