# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mstrauss <mstrauss@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/01/27 12:44:16 by mstrauss          #+#    #+#              #
#    Updated: 2025/01/29 14:20:20 by mstrauss         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = inception

INC = includes/
SRCDIR = srcs/
OBJDIR = objs/
BINDIR = bin


SRCS = 

# re:

up: docker compose up --build

down: 