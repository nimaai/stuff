#!/bin/bash

sudo echo 'deb http://download.opensuse.org/repositories/isv:ownCloud:community/Debian_7.0/ /' >> /etc/apt/sources.list.d/owncloud.list
sudo apt-get update
sudo apt-get install owncloud

wget http://download.opensuse.org/repositories/isv:ownCloud:community/Debian_7.0/Release.key -P ~/downloads
sudo apt-key add - < ~/downloads/Release.key

if [ ! -d ~/stuff ]
then
        mkdir ~/stuff
fi

cd ~/stuff
