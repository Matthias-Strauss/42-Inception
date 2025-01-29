FROM debian:bullseye

RUN apt update && apt upgrade && apt install -y php7.4-fpm
RUN mkdir -p /run/php

COPY www.conf /etc/php/7.4/fpm/pool.d/

CMD ["php-fpm7.4", "-F"]