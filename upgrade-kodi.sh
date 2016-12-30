#!/bin/bash

[ `whoami` = root ] || exec sudo $0

pipplwareRepo="deb http://pipplware.pplware.pt/pipplware/dists/jessie/main/binary /"
sourcesFile=/etc/apt/sources.list.d/pipplware_jessie.list
if ! grep -q "pipplware.pplware.pt" "$sourcesFile"; then
	echo "$pipplwareRepo" >> "$sourcesFile"
	wget -O - http://pipplware.pplware.pt/pipplware/key.asc | sudo apt-key add -
fi

apt-get -y update 
apt-get -y dist-upgrade
