FROM debian:bullseye

RUN apt update && apt upgrade && apt install -y php7.4-fpm php-mysqli curl
RUN mkdir -p /run/php

COPY www.conf /etc/php/7.4/fpm/pool.d/

COPY install_wp.sh .
RUN chmod +x install_wp.sh
CMD ["./install_wp.sh"]