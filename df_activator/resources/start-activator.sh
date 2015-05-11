#!/bin/bash

export PROJECTROOT=/var/project
cd $PROJECTROOT
export CMD="/opt/activator/activator $@"
su develop -c "$CMD"
