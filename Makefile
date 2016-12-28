# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pbondoer <pbondoer@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/02/22 23:12:10 by pbondoer          #+#    #+#              #
#    Updated: 2016/12/27 20:06:58 by pbondoer         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

include mlx.mk

all: $(MLX_LIB)

$(MLX_LIB):
	@make -C $(MLX_DIR)
	cp $(MLX_LIB) $(MLX_NAME)

clean:
	rm -f $(MLX_NAME)
	make -C $(MLX_DIR) clean

fclean: clean

re: fclean all
