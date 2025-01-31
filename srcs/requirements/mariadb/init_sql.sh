#!/bin/bash

# Load credentials from secrets
WP_USER=$(cat /run/secrets/wp_user)
WP_PASSWORD=$(cat /run/secrets/wp_password)

# Create dynamic init.sql with expanded variables
cat > /etc/mysql/init.sql <<EOF
CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS '${WP_USER}'@'%' IDENTIFIED BY '${WP_PASSWORD}';
GRANT ALL PRIVILEGES ON wordpress.* TO '${WP_USER}'@'%';
FLUSH PRIVILEGES;
EOF

# Initialize database if needed
if [ ! -d "/var/lib/mysql/mysql" ]; then
    # Initialize MariaDB data directory
    mysql_install_db --user=mysql --datadir=/var/lib/mysql

    # Start MariaDB temporarily
    mysqld --user=mysql --bootstrap << EOF
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '${WP_PASSWORD}';
EOF
fi

# Start MariaDB normally
exec mysqld --user=mysql