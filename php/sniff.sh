#!/usr/bin/env bash

function sniff () {

	# composer global require "phpunit/phpunit" ; composer global require "squizlabs/php_codesniffer=3.*" ; composer global require "cakephp/cakephp-codesniffer=3.*" ; composer global require "codacy/coverage:dev-master"
	# ~/.config/composer/vendor/bin/phpcs --config-set installed_paths ~/.config/composer/vendor/cakephp/cakephp-codesniffer

	if [ ! -f ~/.config/composer/vendor/bin/phpcbf ] || [ ! -f ~/.config/composer/vendor/bin/phpcs ]; then

    	echo -e "\U1F926 \e[41m php_codesniffer not found! "$reset_color
		echo ""
    	OUT3=1
	fi
	
	if [ ! -d ~/.config/composer/vendor/cakephp/cakephp-codesniffer  ]; then

    	echo -e "\U1F926 \e[41m cakephp-codesniffer not found! "$reset_color
		echo ""
    	OUT3=1
	fi

	echo ""
	OUT3=0
	
	if [ "$OUT3" = "0" ]; then
		~/.config/composer/vendor/bin/phpcbf --standard=CakePHP --standard=PSR2 $(pwd)/database $(pwd)/app -n
		OUT1=$?
	
		~/.config/composer/vendor/bin/phpcs --standard=PSR2 $(pwd)/app -n
		OUT2=$?

		if [ "$OUT1" != "0" ]; then
			echo -e "\U1F50D  \e[41m Code cleaned, add the changes! "$reset_color
			echo ""
	    	fi

		if [ "$OUT2" != "0" ]; then
			echo -e "\U2328  \e[41m There are issues that need manual fixing! "$reset_color
			echo ""
    		fi

		if [ "$OUT1" = "0" ] && [ "$OUT2" = "0" ] && [ "$OUT3" = "0" ]; then
			echo -e "\U1F44C \e[42m Sniff successful "$reset_color
			echo ""
   			return 0
		else
			echo -e "\U1F44E \e[41m Sniff failure! "$reset_color
			echo ""
   			return 1
		fi
	else
		echo -e "\U1F44E \e[41m Failure! "$reset_color
		echo ""
	 	return 1
	fi
}
