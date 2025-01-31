#!/bin/bash


# load Credentials to env from secrets
WP_USER=$(cat /run/secrets/wp_user)
WP_PASSWORD=$(cat /run/secrets/wp_password)

# finish setup
if [ ! -d "/var/lib/mysql/mysql" ]; then
    mysql_install_db --user=mysql --datadir=/var/lib/mysql
fi 
mysqld
