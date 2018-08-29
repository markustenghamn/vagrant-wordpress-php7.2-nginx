#!/usr/bin/env bash

if [ ! -e /etc/vagrant/php ]
then

	echo ">>> setting up php"

	# install php
	apt-get install -y php7.2-fpm php7.2-mysql

	# update the cgi.fix_pathinfo variable within php.inif
	sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php/7.2/fpm/php.ini

	# only run once
	touch /etc/vagrant/php

else

	echo ">>> php already setup..."

fi
