CREATE DATABASE wordpress;
CREATE USER '${WP_USER}'@'%' IDENTIFIED BY '${WP_PASSWORD}';
GRANT ALL PRIVILEGES ON wordpress.* TO '${WP_USER}'@'%';
FLUSH PRIVILEGES;