#!/bin/bash

export PROJECTROOT=/var/project
cd $PROJECTROOT
export CMD="/opt/activator/activator "$@
echo su develop -c $CMD
