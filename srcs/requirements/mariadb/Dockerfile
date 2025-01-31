# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mstrauss <mstrauss@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/01/29 18:07:05 by mstrauss          #+#    #+#              #
#    Updated: 2025/01/31 12:37:26 by mstrauss         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bullseye

RUN apt update && apt upgrade -y && apt install -y mariadb-server

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/
COPY init.sql /etc/mysql/init.sql
COPY init_sql.sh /usr/local/bin/

RUN mkdir -p /run/mysqld && chmod +x /usr/local/bin/init_sql.sh

CMD ["/usr/local/bin/init_sql.sh"]