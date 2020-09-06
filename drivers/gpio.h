#ifndef GPIO_H
#define GPIO_H

#include "stm32f767zi.h"
#include "common.h"

struct gpio_config {
	unsigned int mode;
	unsigned int outtype;
	unsigned int speed;
	unsigned int pull;
};

void gpio_init_pin (struct GPIO_r      *io,
		    unsigned char       pin,
		    struct gpio_config *conf);
void gpio_write	   (struct GPIO_r *io,
		    unsigned char  pin,
		    enum signal    sig);

#endif /* GPIO_H */
