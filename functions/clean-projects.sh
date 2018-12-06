function clean-projects () {
    	work
    	for d in */;
        do
            cd $d
            if [ -d .git ]; then
                echo "Starting $(pwd)"
                git fetch
                develop
                pull
                master
                pull
                gitclean
                gitprune
                echo "Finished $(pwd)"
            fi;
            work
        done
}