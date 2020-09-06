#include "gpio.h"

void
gpio_init_pin (struct GPIO_r      *io,
	       unsigned char       pin,
	       struct gpio_config *conf)
{
	io->MODER |= conf->mode << (pin * 2);
	io->OTYPER |= conf->outtype << pin;
	io->OSPEEDR |= conf->speed << (pin * 2);
	io->PUPDR |= conf->pull << (pin * 2);
}

void
gpio_write (struct GPIO_r *io,
	    unsigned char  pin,
	    enum signal    sig)
{
	if (sig == HIGH)
		io->BSRR = 1 << pin;
	else
		io->BSRR = 1 <<  (16 + pin);
}
