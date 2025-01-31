# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mstrauss <mstrauss@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/01/29 16:17:15 by mstrauss          #+#    #+#              #
#    Updated: 2025/01/31 14:35:59 by mstrauss         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bullseye

RUN apt update && apt upgrade && apt install -y nginx curl

COPY default /etc/nginx/sites-available/

CMD ["nginx", "-g", "daemon off;"]