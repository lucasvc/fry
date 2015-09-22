#!/bin/bash

[ `whoami` = root ] || exec sudo $0

pipplwareRepo="deb http://pipplware.pplware.pt/pipplware/dists/stable/main/binary /"
echo "$pipplwareRepo" >> /etc/apt/sources.list

apt-get -y update
apt-get -y dist-upgrade

# sed -i '' '/$pipplwareRepo/d' ./infile
