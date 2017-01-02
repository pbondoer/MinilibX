# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    mlx.mk                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pbondoer <pbondoer@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/12/27 20:07:03 by pbondoer          #+#    #+#              #
#    Updated: 2017/01/02 10:56:41 by pbondoer         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Base variables for miniLibX based projects
# Use with 'include /path/to/mlx.mk'
# Make sure to define L_MLX with the path to miniLibX first

OS			= $(shell uname)

ifndef L_MLX
	L_MLX	= .
endif

MLX_NAME	= libmlx.a

MLX_COCOA	= $(L_MLX)/cocoa/
MLX_X11		= $(L_MLX)/X11/

ifeq ($(OS), Linux)
	MLX_DIR	= $(MLX_X11)
	MLX_LNK	= -lXext -lX11
else
	MLX_DIR	= $(MLX_COCOA)
	MLX_LNK	= -framework OpenGL -framework AppKit
endif

MLX_LNK		+= -L $(MLX_DIR) -l mlx
MLX_INC		= -I $(MLX_DIR)
MLX_LIB		= $(addprefix $(MLX_DIR),$(MLX_NAME))

LIB_LNK		+= $(MLX_LNK)
LIB_INC		+= $(LIB_INC)
