#!/bin/bash
cd /var/www/html

# Download WP-CLI
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
./wp-cli.phar core download --allow-root

# Read secrets from Docker secrets files
WP_USER=$(cat /run/secrets/wp_user)
WP_PASSWORD=$(cat /run/secrets/wp_password)
WP_ROOT_USER=$(cat /run/secrets/wp_root_user)
WP_ROOT_PASSWORD=$(cat /run/secrets/wp_root_password)

# Configure WordPress
./wp-cli.phar config create --dbname=wordpress --dbuser="$WP_USER" --dbpass="$WP_PASSWORD" --dbhost=mariadb --allow-root

# Install WordPress
./wp-cli.phar core install --url=localhost --title=inception --admin_user="$WP_ROOT_USER" --admin_password="$WP_ROOT_PASSWORD" --admin_email=root@root.com --allow-root

# Start PHP-FPM
php-fpm7.4 -F