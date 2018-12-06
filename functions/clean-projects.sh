function clean-projects () {
    	work
    	for d in $(ls -d */);
        do
            cd $d
            if [ -d .git ]; then
                echo -e "\e[44m Starting $d "$reset_color
                fetch
                master
                pullm
                develop
                pulld
                gitclean
                gitprune
                echo -e "\e[44m Finished $d "$reset_color
            fi;
            work
        done
}