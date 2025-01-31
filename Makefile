# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mstrauss <mstrauss@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/01/27 12:44:16 by mstrauss          #+#    #+#              #
#    Updated: 2025/01/31 14:36:24 by mstrauss         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

re:
	docker compose -f ./srcs/docker-compose.yml build --no-cache
	
out:
	docker compose -f ./srcs/docker-compose.yml up -d

down:
	docker compose -f ./srcs/docker-compose.yml down


.PHONY: re up down