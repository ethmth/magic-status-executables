#!/bin/bash

INSTALL_LOCATION="/usr/share/plasma/plasmoids/com.github.ethmth.magic-status-executables"
# INSTALL_LOCATION="~/.local/share/plasma/plasmoids/com.github.ethmth.magic-status-executables"

if [[ $EUID -ne 0 ]]; then
	echo "This script should be run with root/sudo privileges."
	exit 1
fi

if [ -d "$INSTALL_LOCATION" ]; then
    rm -rf $INSTALL_LOCATION
fi

mkdir -p $INSTALL_LOCATION

cp -r ./* $INSTALL_LOCATION