/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   mlx_get_screen_size.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abe <marvin@42.fr>                         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/28 19:45:38 by abe               #+#    #+#             */
/*   Updated: 2020/03/02 22:06:49 by abe              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mlx_int.h"
#include <X11/Xlib.h>

int	mlx_get_screen_size(t_xvar *xvar, int *sizex, int *sizey)
{
	Display	*d;
	Screen	*s;

	(void)xvar;
	d = XOpenDisplay(NULL);
	s = DefaultScreenOfDisplay(d);
	*sizex = s->width;
	*sizey = s->height;
	XCloseDisplay(d);
	return (0);
}
