#!/bin/bash
# ./set_header.sh

# Set variables
read -p "firstname.lastname : " $USER2600
if [ -z "$USER2600" ]; then
    echo "Vous n'avez pas entré de valeur."
else
	echo "Vous avez entré : $USER2600"
	echo "USER2600=" >> ~/.zshrc
	echo "export USER2600" >> ~/.zshrc

	if [ ! -z "$GROUP" ]
	then
		echo "GROUP=`/usr/bin/id -gn $USER2600`" >> ~/.zshrc
		echo "export GROUP" >> ~/.zshrc
	fi
	if [ ! -z "$MAIL" ]
	then
		echo "MAIL="$USER2600@ecole2600.com"" >> ~/.zshrc
		echo "export MAIL" >> ~/.zshrc
	fi
fi

	mkdir -p ~/.vim/plugin

	# Add stdheader to vim plugins
	cp plugin/stdheader.vim ~/.vim/plugin/

	source ~/.zshrc
