#!/usr/bin/env bash

function phpunit () {
	~/.config/composer/vendor/bin/phpunit
	OUT1=$?

	if [ "$OUT1" = "0" ]; then
		echo ""
		echo  -e "\U1F44C \e[42m Tests successful "$reset_color
		echo ""

   		return 0
	else
		echo ""
		echo -e "\U1F44E \e[41m Tests failure "$reset_color
		echo ""

   		return 1
	fi
}
