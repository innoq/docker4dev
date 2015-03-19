#!/bin/bash

export PROJECTROOT=/var/projects

case "$1" in
	--new)
		cd $PROJECTROOT
		su develop -c "/opt/activator/activator new"
		;;
	*)
		if [ -f $PROJECTROOT/$1/activator ];
		then
			cd $PROJECTROOT/$1
			su develop -c "./activator shell"
		else
			echo "No activator project found in " $1
		fi
		;;
esac
