#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get -y install \
	winbind \
	samba \
	kodi

# http://serverfault.com/questions/352305/why-can-windows-machines-resolve-local-names-when-linux-cant
# sed "/hosts:*/hosts:* wins/"

sudo apt-get -y clean
