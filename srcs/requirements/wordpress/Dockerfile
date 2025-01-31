FROM debian:bullseye

RUN apt update && apt upgrade && apt install -y php7.4-fpm php-mysqli curl
RUN mkdir -p /run/php

RUN mkdir -p /var/www/html

COPY www.conf /etc/php/7.4/fpm/pool.d/

WORKDIR /var/www/html

COPY install_wp.sh .
RUN chmod +x install_wp.sh
CMD ["./install_wp.sh"]