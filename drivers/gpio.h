#ifndef GPIO_H
#define GPIO_H

#include "stm32f767zi.h"
#include "common.h"

enum gpio_port {
	PORTA,
	PORTB,
	PORTC,
	PORTD,
	PORTE,
	PORTF,
	PORTG,
	PORTH,
	PORTI,
	PORTJ,
	PORTK
};

struct gpio {
	enum gpio_port port;
	unsigned char  pin;
};

struct gpio_config {
	unsigned char mode;
	unsigned char outtype;
	unsigned char speed;
	unsigned char pull;
};

void gpio_init_port (enum gpio_port port);
void gpio_init_pin  (struct gpio        *io,
		     struct gpio_config *conf);
void gpio_write	    (struct gpio *io, enum signal sig);

#endif /* GPIO_H */
