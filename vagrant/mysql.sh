#!/usr/bin/env bash

# Install MySQL Server in a Non-Interactive mode.
apt-get -y install mysql-server-5.7

sudo mysql -e 'CREATE USER "wordpress"@"%" IDENTIFIED BY "wordpress";'
sudo mysql -e 'CREATE DATABASE wordpress;'
sudo mysql -e 'GRANT ALL PRIVILEGES ON wordpress.* TO "wordpress"@"%" IDENTIFIED BY "wordpress"; FLUSH PRIVILEGES;';

service mysql restart