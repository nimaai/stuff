#!/bin/bash

# install owncloud ##################

echo 'deb http://download.opensuse.org/repositories/isv:ownCloud:community/Debian_7.0/ /' | sudo tee -a /etc/apt/sources.list.d/owncloud.list
sudo aptitude update
sudo aptitude install owncloud

wget http://download.opensuse.org/repositories/isv:ownCloud:community/Debian_7.0/Release.key -P ~/downloads
sudo apt-key add - < ~/downloads/Release.key

####################################

if [ ! -d ~/stuff ]
then
        mkdir ~/stuff
fi

cd ~/stuff

# set mount point for nas in fstab ######################

if [ ! -d /media/nas/Bhakti ]
then
        mkdir -p /media/nas/Bhakti
        echo '192.168.1.3:/volume1/Bhakti     /media/nas/Bhakti      nfs    auto  0  0' | sudo tee -a /etc/fstab
fi
