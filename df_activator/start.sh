#!/bin/bash

cd /home/develop

case "$1" in
	new)
		/opt/activator/activator
		;;
	*)
		if [ -d /home/develop/$1 ]
			
		;;
esac
