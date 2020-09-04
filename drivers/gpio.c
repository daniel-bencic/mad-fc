#include "gpio.h"

void
gpio_init_port (enum gpio_port port)
{
	/* Enable clock for GPIO port */
	RCC->AHB1ENR |= (0x1UL << (unsigned int)port);
}

void
gpio_init_pin (struct gpio        *io,
	       struct gpio_config *conf)
{
	/* Configure GPIO pin */ 
	struct GPIO_r *rg = (struct GPIO_r *)(AHB1_BASE + 0x400UL * io->port);

	rg->MODER |= conf->mode << (io->pin * 2U);
	rg->OTYPER |= conf->outtype << io->pin;
	rg->OSPEEDR |= conf->speed << (io->pin * 2U);
	rg->PUPDR |= conf->pull << (io->pin * 2U);
}

void
gpio_write (struct gpio *io,
	    enum signal  sig)
{
	/* Configure GPIO pin */ 
	struct GPIO_r *rg = (struct GPIO_r *)(AHB1_BASE + 0x400UL * io->port);

	if (sig == HIGH)
		rg->BSRR = 0x1UL << (unsigned int)io->pin;
	else
		rg->BSRR = 0x1UL <<  (16U + (unsigned int)io->pin);
}
