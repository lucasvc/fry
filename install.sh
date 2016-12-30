#!/bin/bash

# execute current script as root
[ `whoami` = root ] || exec sudo $0

pipplwareRepo="deb http://pipplware.pplware.pt/pipplware/dists/jessie/main/binary /"
echo "$pipplwareRepo" >> /etc/apt/sources.list.d/pipplware_jessie.list

wget -O - http://pipplware.pplware.pt/pipplware/key.asc | sudo apt-key add -

apt-get -y update
apt-get -y install \
	winbind \
	samba \
	kodi

apt-get -y upgrade && \
	apt-get -y dist-upgrade

# http://serverfault.com/questions/352305/why-can-windows-machines-resolve-local-names-when-linux-cant
# sed "/hosts:*/hosts:* wins/"

sudo apt-get -y clean
