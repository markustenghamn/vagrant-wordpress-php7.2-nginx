#!/usr/bin/env bash

if [ ! -e /etc/vagrant/apt-get ]
then

	echo ">>> setting up apt-get"

	# Required for add-apt-repository
	apt-get install -y software-properties-common build-essential

    # Download and Install the Latest Updates for the OS
    apt-get update && apt-get upgrade -y

    # Install essential packages
    apt-get -y install zsh htop

	# only run once
	touch /etc/vagrant/apt-get

else

	echo ">>> apt-get is already setup..."

fi
