function push () {

	sniff
	OUT1=$?

	phpunit
	OUT2=$?

	echo ""
	if [ "$OUT1" = "0" ] && [ "$OUT2" = "0" ]; then
		BRANCH=$(git rev-parse --abbrev-ref HEAD)
		echo -e "\U261D  \e[44m git push origin $BRANCH "$reset_color
		echo ""
		git push origin $BRANCH
		echo ""
		echo -e "\U1F346 \e[42m Pushed "$reset_color
		echo ""
   		return 0
	else
		echo ""
		echo -e "\U1F95C \e[41m Not pushed! "$reset_color
		echo ""
   		return 1
	fi
}
