# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mstrauss <mstrauss@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/01/27 12:44:16 by mstrauss          #+#    #+#              #
#    Updated: 2025/01/29 16:29:10 by mstrauss         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

re:

up:
	docker compose -f ./srcs/docker-compose.yml up -d

down:
	docker compose down

.phony: re up down